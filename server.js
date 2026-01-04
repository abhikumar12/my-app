const http = require('http');
const port = process.env.PORT || 3000;

const requestHandler = (request, response) => {
 console.log(`Received request for URL: ${request.url}`);


  if (request.url === '/health') {
    response.statusCode = 200;
    response.end('OK');
  } else {
    response.statusCode = 200;
    response.end('Hello World!');
  }
}

const server = http.createServer(requestHandler);

server.listen(port, (err) => {
  if (err) {
    return console.log('Something went wrong', err);
  }

  console.log(`Server is listening on ${port}`);
});
