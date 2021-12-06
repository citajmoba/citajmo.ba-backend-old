const answers_table = require("./answers.json");
const questions_table = require("./questions.json");

module.exports = (models) => {
    return models.question.bulkCreate(questions_table)
        .then(() => {models.answer.bulkCreate(answers_table)})            
        .catch(err => {
        console.log(err);
        console.log('question data load failure: ' + err.name)
    })   
}