const age_levels_table = require("./age_levels.json");
const answers_table = require("./answers.json");
const book_nationalities_table = require("./book_nationalities.json");
const books_genres_table = require("./books_genres.json");
const books_locations_table = require("./books_locations.json");
const books_nationalities_table = require("./books_nationalities.json");
const books_periods_table = require("./books_periods.json");
const books_table = require("./books.json");
const difficulty_levels_table = require("./difficulty_levels.json");
const genres_table = require("./genres.json");
const locations_table = require("./locations.json");
const periods_table = require("./periods.json");
const question_categories_table = require("./question_categories.json");
const questions_table = require("./questions.json");
const roles_table = require("./roles.json");
const users_roles_table = require("./users_roles.json");
const users_table = require("./users.json");

module.exports = (models) => {
    const Books = models.book;
    // first load tables that are referenced
    const promiseArray = [
        models.role.bulkCreate(roles_table),
        models.user.bulkCreate(users_table),
        models.location.bulkCreate(locations_table),
        models.period.bulkCreate(periods_table),
        models.genre.bulkCreate(genres_table),
        models.nationality.bulkCreate(book_nationalities_table),
        models.difficulty.bulkCreate(difficulty_levels_table),
        models.ageLevel.bulkCreate(age_levels_table),
        models.category.bulkCreate(question_categories_table),
    ];
    Promise.all(promiseArray)
        //next load books table and its associations
        .then(() => {return Books.bulkCreate(books_table, {returning: true})})
            .then(books => {
                books.forEach (book => {
                    // array of rows in books_genres table figuring book
                    const filteredGenres = books_genres_table.filter(el => {
                        return el.bookId === book.id
                    });
                    // array of rows in books_periods table figuring book
                    const filteredPeriods = books_periods_table.filter(el => {
                        return el.bookId === book.id
                    });
                    // array of rows in books_genres table figuring book
                    const filteredLocations = books_locations_table.filter(el => {
                        return el.bookId === book.id
                    });
                    // array of rows in books_genres table figuring book
                    const filteredNationalities = books_nationalities_table.filter(el => {
                        return el.bookId === book.id
                    });

                    //turn this array into a list of genre id's for the book
                    const genres = filteredGenres.map(el => {
                        return models.genre.findByPk(el.genreId)
                    });
                    
                    Promise.all(genres)
                      .then((results) => {book.setGenres(results)})
                        .then(() => {
                            const periods = filteredPeriods.map(el => {
                                return models.period.findByPk(el.periodId)
                            });
                            return Promise.all(periods)})
                          .then((results) => {book.setPeriods(results)})
                            .then(() => {
                                const locations = filteredLocations.map(el => {
                                    return models.location.findByPk(el.locationId)
                                });
                                return Promise.all(locations)})
                              .then((results) => {book.setLocations(results)})
                                  .then(() => {
                                    const nationalities = filteredNationalities.map(el => {
                                        return models.nationality.findByPk(el.bookNationalityId)
                                    });
                                    return Promise.all(nationalities)})
                                  .then((results) => {book.setBookNationalities(results)})
            })
        })
        .catch(err => {console.log('data load failure: ' + err.message)})   
}