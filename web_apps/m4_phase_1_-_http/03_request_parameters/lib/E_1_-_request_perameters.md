Exercise One
Use Postman to send a GET request to the URL https://postman-echo.com/get.

In the "Query params" section, set a query parameter with key title and value 'Welcome'. Then send the request.

You should get the following JSON response, and the status code should be 200 OK:

```json
{
    "args": {
        "title": "Welcome",
    },
    "headers": {
        // (omitted).
    },
    "url": "https://postman-echo.com/get?title=Welcome"
}
```

You'll note that Postman automatically added the parameters at the end of the URL, using a syntax such as ?title=Welcome — this is the way query parameters are sent in GET requests, inside the URL itself.

Solution video - https://www.youtube.com/watch?v=zwU6SpTwuxY&t=420s&ab_channel=LeoHetsch


My output is:

```json
{
    "args": {
        "title": "Welcome"
    },
    "headers": {
        "x-forwarded-proto": "https",
        "x-forwarded-port": "443",
        "host": "postman-echo.com",
        "x-amzn-trace-id": "Root=1-642198bc-23a3e21d2d72a2b0524cda61",
        "user-agent": "PostmanRuntime/7.31.3",
        "accept": "*/*",
        "postman-token": "ef3de06b-fc6e-464f-934b-4c49863633eb",
        "accept-encoding": "gzip, deflate, br",
        "cookie": "sails.sid=s%3A6MC5-yV97z09KfBgeDmyCv2oKvD9bHuf.lLrriBqOiFaeN2lkZFVWcKFJxn%2FPpRxsvIHSh8zpMbI"
    },
    "url": "https://postman-echo.com/get?title=Welcome"
}
```
My End.