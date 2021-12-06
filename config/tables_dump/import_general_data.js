const age_levels_table = require("./age_levels.json");
const book_nationalities_table = require("./book_nationalities.json");
const difficulty_levels_table = require("./difficulty_levels.json");
const genres_table = require("./genres.json");
const locations_table = require("./locations.json");
const periods_table = require("./periods.json");
const question_categories_table = require("./question_categories.json");
const roles_table = require("./roles.json");

module.exports = async (models) => {
    const promiseArray = [
        models.location.bulkCreate(locations_table),
        models.period.bulkCreate(periods_table),
        models.genre.bulkCreate(genres_table),
        models.nationality.bulkCreate(book_nationalities_table),
        models.difficulty.bulkCreate(difficulty_levels_table),
        models.ageLevel.bulkCreate(age_levels_table),
        models.category.bulkCreate(question_categories_table),
        models.role.bulkCreate(roles_table)
    ];
    return Promise.all(promiseArray,null,err => console.log('general data load failure: ' + err.message))
        /*.then()
        .catch(err => {console.log('general data load failure: ' + err.message)})   */
}