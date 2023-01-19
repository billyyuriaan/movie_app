import connection from "./database.js";

var rawSql = (sql) => {

    return new Promise((resolve, reject) => {

        connection.query(sql, (err,result) => {
            if (result === undefined) {
                reject(err)
            }else{
                resolve(result)
            }
        }) 
    })
}

export {
    rawSql,
};