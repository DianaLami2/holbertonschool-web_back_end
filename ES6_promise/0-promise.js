function getResponseFromAPI() {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve("Success data from API");
    }, 1000);
  });
}

export default getResponseFromAPI;
