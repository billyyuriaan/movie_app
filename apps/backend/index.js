import express from 'express';
import cors from 'cors';
import connection from './src/database/database.js';
import Movie from './src/database/movieApi.js';

const app = express();
const port = 3000;


var allowedCors = ["*"]

var corsOptions = {
    origin: allowedCors,
    optionsSuccessStatus: 200
}

app.use(express.json())
app.use(express.urlencoded({extended:  true}))
app.options(cors(corsOptions));

app.get("/api/movie", async (req,res,next) => {
    await Movie.getAllMovie()
    .then((result) => res.send(result))
    .catch(err => console.error(err))
})

app.get("/api/movie/:id", async (req,res,next) => {
    await Movie.getMoviewById(req.params.id)
    .then(result => res.send(result))
    .catch(err => console.error(err))
})

app.post("/api/movie", async (req,res,next) => {
    await Movie.createMovie(req.body.title, req.body.duration)
    .then(result => res.json({message : "Success Insert User", status : 200}))
    .catch(err => res.json({message: err, status: 400}))
})

app.delete("/api/movie/:id", async(req,res,next) => {
    await Movie.deleteMovie(req.params.id)
    .then(result => res.json({message: "Delete Successfull", status: 200}))
    .catch(err => res.json({message: err, status: 200}))
})


const server = app.listen(port, () => {
    console.log(`Backend Is Listening On http://localhost:${port}`);
})

process.on("SIGINT", async ()  => {
    console.log("Shutting Down Server And Database Connection");

    connection.end()

    server.close(() => {
        console.log("Server Closed, Good Bye")
    })
})