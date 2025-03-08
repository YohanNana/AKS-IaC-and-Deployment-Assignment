const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from my custom Node.js containerized app!");
});

const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
