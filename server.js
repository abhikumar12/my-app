import http from "http";

const server = http.createServer((request, response) => {
  console.log(`Received request for URL: ${request.url}`);
  response.end("OK");
});

server.listen(process.env.PORT || 3000, () => {
  console.log("Server running");
});
