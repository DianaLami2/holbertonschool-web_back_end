import getResponseFromAPI from "./0-promise.js";

const response = getResponseFromAPI();

console.log(response instanceof Promise); // Should log true

response.then((data) => {
  console.log("Response from API:", data);
}).catch((error) => {
  console.error("Error fetching data from API:", error);
});

