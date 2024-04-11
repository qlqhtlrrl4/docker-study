const express = require('express');

const PORT = 8085;
// const HOST = "0.0.0.0"; // 따로 명시적으로 안함

//APP
const app = express();
app.get('/', (req, res) => {
    res.send("안녕하세1111요")
});

app.listen(PORT);
console.log("Server is running");
