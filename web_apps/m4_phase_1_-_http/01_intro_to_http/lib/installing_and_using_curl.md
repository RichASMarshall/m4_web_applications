How to install CURL


CURL

```bash
brew install curl
```

then in the command-line input:

```bash
curl https://jsonplaceholder.typicode.com/todos/1
```

the expected output is:
```json
{
  "userId": 1,
  "id": 1,
  "title": "delectus aut autem",
  "completed": false
}
```