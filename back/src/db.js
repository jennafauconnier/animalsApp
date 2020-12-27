module.exports = require('knex')({
    client: 'mysql',
    connection: {
        host : '127.0.0.1',
        user : 'user',
        password: '123',
        database : 'test'
    },
    pool: {
        afterCreate: function (conn, done) {
            conn.query('SHOW TABLES;', function (err) {
                if (err) {
                    // first query failed, return error
                    console.log('Error while connecting to mysql', err)
                    done(err, conn);
                } else {
                    console.log('Connected to mysql')
                    done(err, conn);
                }
            })
        }
    }
})