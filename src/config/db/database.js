const sqlite3 = require('sqlite3')
const sqlite = require('sqlite')

module.exports = (async() => {
    return sqlite.open({
        filename: './src/config/db/db.db',
        driver: sqlite3.Database
    })
})()