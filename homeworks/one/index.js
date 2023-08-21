const express = require("express");
const app = express();
const PORT = 3000;
app.get('/', (req, res) => {
    res.send("Ich  galuba dass es fonksoniert :)  ")
});
app.listen(PORT, () => console.log("Server is listening to port" + PORT));
