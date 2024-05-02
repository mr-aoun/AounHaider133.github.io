const https = require("https");
const express = require("express");
const bodyParser = require("body-parser");
const path = require("path");

const app = express();
app.use(bodyParser.urlencoded({ extended: true }));

app.get("/", (req, res, err) => {
  res.sendFile(path.join(__dirname, "index.html"));
});

//'/'=>POST
app.post("/", (req, res, err) => {
  const cityName = req.body.cityName;
  const apiKey = "f284943a3292b69db0a5b68b524777da";
  const url =
    "https://api.openweathermap.org/data/2.5/weather?q=" +
    cityName +
    "&appid=" +
    apiKey;
  https.get(url, (response) => {
    console.log(response.statusCode);

    response.on("data", (data) => {
      const weatherData = JSON.parse(data);
      const temp = weatherData.main.temp;
      const wheatherDescription = weatherData.weather[0].description;
      const icon = weatherData.weather[0].icon;
      const imageUrl = "http://openweathermap.org/img/wn/" + icon + "@2x.png";
      res.write("<p>The wheather is currently " + wheatherDescription + "</p>");
      res.write(
        "<h1>The temperature in London is: " + temp + " degrees Celcius.</h1>"
      );
      res.write("<img src=" + imageUrl + ">");
      res.send();
    });
  });
});

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});
