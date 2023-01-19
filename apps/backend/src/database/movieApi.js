import connection from "./database.js";

class Movie{
    static getAllMovie () {
        return new Promise((resolve, reject) => {
            connection.query(`SELECT * FROM movie`, (err, result) => {
                if (err) {
                    reject(err)
                } else {
                    resolve(result)
                }
            })
        })
    }

    static getMoviewById(id) {
        return new Promise((resolve,reject) => {
            connection.query(`SELECT * FROM movie WHERE id = ${id}`, (err, result) => {
                if (err) {
                    reject(err);
                }else{
                    resolve(result)
                }
            })
        })
    }

    static createMovie (title,duration){
        return new Promise((resolve, reject) => {
            connection.query(`INSERT INTO movie(title,duration) VALUES ("${title}",${duration})`, (err, result) => {
                if (err) {
                    reject(err)
                } else {
                    resolve(result)
                }
            })
        })
    }

    static deleteMovie(id){
        return new Promise((resolve, reject) => {
            connection.query(`DELETE FROM movie WHERE id = ${id}`, (err, result) => {
                if (err) {
                    reject(err)
                } else {
                    resolve(result)
                }
            })
        })
    }
}

export default Movie;