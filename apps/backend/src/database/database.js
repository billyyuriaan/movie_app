import mysql from 'mysql2';

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "movie_app"
})

connection.connect((err) => {
    if(err){
        console.error("Error Connect to MYSQL" + err);
        return;
    }
    console.log("Connection With Database Establish");
})

export default connection;