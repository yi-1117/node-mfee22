// 引入 express
const express = require("express");
require("dotenv").config();

// 利用 express 這個 library 來建立一個 web app
let app = express();
const port = process.env.SERVER_PORT || 3000;
app.listen(port, () => {
    console.log(`Server running at port ${port}`)
});