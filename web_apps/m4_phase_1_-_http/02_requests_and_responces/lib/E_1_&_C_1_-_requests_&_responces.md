How to HTTP


Client:
A software that connects to the server to ask information or data.


Web Server:
Command_lin program
(maybe uses a database to store its data.)


Example: a news website

1.  The client program connects to the server
    and asks for the latest articles.

2.  The server receives that request and
    prepares the list of articles
    (maybe from a database.)

3.  The server sends back the list of articles
    to the client.

4.  The client receives the list of articles and
    displays them to the user.


HTTP request components:
    * Method or verb (GET, POST, ...)
    * Path
    * Parameters


```bash
curl -X GET https://jsonplaceholder.typicode.com/todos/12
```

or

```bash
curl -X POST https://jsonplaceholder.typicode.com/todos/12
```

HTTP response components:
    * Status code (200, 404)
    * Content or data



Exercise_1
Use curl to send the following HTTP request:

Host: https://jsonplaceholder.typicode.com
Method: GET
Path: /todos/12
You should get the following response body:


```json
{
  "userId": 1,
  "id": 12,
  "title": "ipsa repellendus fugit nisi",
  "completed": true
}
```


Challenge
Use curl to send the following HTTP request:

Host: https://jsonplaceholder.typicode.com
Method: POST
Path: /todos
You should get the following response body:

```json
{
  "id": 201
}
```

Answer is:
```bash
curl -X POST https://jsonplaceholder.typicode.com/todos
```
