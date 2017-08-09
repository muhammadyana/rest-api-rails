# SIMPLE REST API use Rails 5

## Technology
- Ruby 2.4.1
- PostgreSQL
- [Faker data](https://github.com/stympy/faker)

## INSTALL DEPENDENCIES
```bash
$ bundle install
```
## CREATE DATABASE
```bash
$ rake db:create
```
## RUN MIGRATION
```bash
$ rake db:migrate
```
## MAKE DUMMY DATA
```bash
$ rake db:seed
```
## RUN SERVER
```bash
$ rails s
```
## Tes using Postman Create Article
```bash
enter url http://localhost:3000/api/vi/articles
```
```bash
choose content type and application/json in Headers
```
```bash
choose Body
```
```bash
{
	"title": "Article from postman third",
	"body": "Lorem Ipsum asas "
}
```
If success it will return like json format
```bash
{
    "status": "SUCCESS",
    "message": "Saved article",
    "data": {
        "id": 9,
        "title": "Article from postman third",
        "body": "Lorem Ipsum asas ",
        "created_at": "2017-08-09T10:30:38.738Z",
        "updated_at": "2017-08-09T10:30:38.738Z"
    }
}
```
## Show All article 
Methode GET
```bash
http://localhost:3000/api/v1/articles
```
and will return json format
```bash
{
    "status": "hoho Sukses",
    "message": "Loader article",
    "data": [
        {
            "id": 7,
            "title": "Article from postman",
            "body": "Lorem Ipsum",
            "created_at": "2017-08-09T10:29:50.978Z",
            "updated_at": "2017-08-09T10:29:50.978Z"
        },
        {
            "id": 6,
            "title": "as",
            "body": "as",
            "created_at": "2017-08-09T10:29:06.283Z",
            "updated_at": "2017-08-09T10:29:06.283Z"
        },
        {
            "id": 5,
            "title": "Butter In a Lordly Dish",
            "body": "Accusantium ut modi quis amet.",
            "created_at": "2017-08-09T08:03:07.171Z",
            "updated_at": "2017-08-09T08:03:07.171Z"
        },
        {
            "id": 4,
            "title": "The Golden Apples of the Sun",
            "body": "Occaecati architecto facilis expedita.",
            "created_at": "2017-08-09T08:03:07.170Z",
            "updated_at": "2017-08-09T08:03:07.170Z"
        },
        {
            "id": 3,
            "title": "As I Lay Dying",
            "body": "Necessitatibus sed iusto quis mollitia aspernatur reprehenderit consequatur omnis.",
            "created_at": "2017-08-09T08:03:07.168Z",
            "updated_at": "2017-08-09T08:03:07.168Z"
        },
        {
            "id": 2,
            "title": "I Will Fear No Evil",
            "body": "Voluptates laudantium facilis cumque rerum fuga iusto.",
            "created_at": "2017-08-09T08:03:07.166Z",
            "updated_at": "2017-08-09T08:03:07.166Z"
        },
        {
            "id": 1,
            "title": "The Road Less Traveled",
            "body": "Rerum alias non pariatur perspiciatis quasi odit.",
            "created_at": "2017-08-09T08:03:07.146Z",
            "updated_at": "2017-08-09T08:03:07.146Z"
        }
    ]
}
```

## Show One or custom article 
Methode GET
```bash
http://localhost:3000/api/v1/articles/article_id
example
http://localhost:3000/api/v1/articles/1
```
will return json format
```bash
{
    "status": "hoho Sukses",
    "message": "Loader article",
    "data": {
        "id": 1,
        "title": "The Road Less Traveled",
        "body": "Rerum alias non pariatur perspiciatis quasi odit.",
        "created_at": "2017-08-09T08:03:07.146Z",
        "updated_at": "2017-08-09T08:03:07.146Z"
    }
}
```

