const books_genres_table = require("./books_genres.json");
const books_locations_table = require("./books_locations.json");
const books_nationalities_table = require("./books_nationalities.json");
const books_periods_table = require("./books_periods.json");
const books_table = require("./books.json");

module.exports = (models) => {
    const Books = models.book;
    return Books.bulkCreate(books_table, {returning: true})
        .then(books => {
            books.forEach (async book => {
                // create array of rows from books_genres table figuring book
                const filteredGenres = books_genres_table.filter(el => el.bookId === book.id);

                // create array of rows from books_periods table figuring book
                const filteredPeriods = books_periods_table.filter(el => el.bookId === book.id);

                // create array of rows from books_locations table figuring book
                const filteredLocations = books_locations_table.filter(el => el.bookId === book.id);

                // create array of rows from books_genres table figuring book
                const filteredNationalities = books_nationalities_table.filter(el => el.bookId === book.id);

                //turn this array into a list of genre id's for the book
                const genres = filteredGenres.map(el => models.genre.findByPk(el.genreId));
                const results = await Promise.all(genres);
                book.setGenres(results);

                const periods = filteredPeriods.map(el => models.period.findByPk(el.periodId));
                const results_1 = await Promise.all(periods);
                book.setPeriods(results_1);

                const locations = filteredLocations.map(el => models.location.findByPk(el.locationId));
                const results_2 = await Promise.all(locations);
                book.setLocations(results_2);

                const nationalities = filteredNationalities.map(el => models.nationality.findByPk(el.bookNationalityId));
                const results_3 = await Promise.all(nationalities);
                book.setBookNationalities(results_3);
            })

        })
        .catch(err => {console.log('book data load failure: ' + err.message)})   
}