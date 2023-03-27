Exercise Two

Use Postman to send a POST request to the URL https://postman-echo.com/post.In the "Body" tab below the URL field, select the option "form-data", and set a parameter with key title and value 'Welcome'. Then send the request.

You should get the following JSON response, and the status code should be 200 OK:

```json
{
    "args": {},
    "data": {},
    "files": {},
    "form": {
        "title": "Welcome"
    },
    "headers": {
        // (omitted).
    },
    "json": null,
    "url": "https://postman-echo.com/post"
}
```

Solution video - https://www.youtube.com/watch?v=zwU6SpTwuxY&t=530s&ab_channel=LeoHetsch


Output is:

```json
{
    "args": {},
    "data": {},
    "files": {},
    "form": {
        "title": "Welcome"
    },
    "headers": {
        "x-forwarded-proto": "https",
        "x-forwarded-port": "443",
        "host": "postman-echo.com",
        "x-amzn-trace-id": "Root=1-6421995d-6a4dad3f420cabfb569c9668",
        "content-length": "167",
        "user-agent": "PostmanRuntime/7.31.3",
        "accept": "*/*",
        "postman-token": "bda90326-51b6-4d94-b721-38c14c9d79c1",
        "accept-encoding": "gzip, deflate, br",
        "content-type": "multipart/form-data; boundary=--------------------------504069366070408129477818",
        "cookie": "sails.sid=s%3AIAqCkgnlNCIHtvcDK8yMmnZ1TRpkeWGr.T46HQ4JpbJGvN7FiArs%2FNDotncIUeSqUljvk5U%2FJoEg"
    },
    "json": null,
    "url": "https://postman-echo.com/post"
}
```
