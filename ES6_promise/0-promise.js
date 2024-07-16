function getResponseFromAPI() {
  return new Promise((resolve, reject) => {
    // Simulating an asynchronous operation (e.g., fetching data from an API)
    setTimeout(() => {
      // Assuming the operation is successful after 1 second
      resolve("Success data from API");

      // Simulating an error scenario
      // reject(new Error("Failed to fetch data from API"));
    }, 1000);
  });
}

export default getResponseFromAPI;

