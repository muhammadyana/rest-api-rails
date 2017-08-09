# SIMPLE REST API use Rails 5

## Technology
- Ruby 2.4.1
- PostgreSQL
- [Faker data](https://github.com/stympy/faker)

## INSTALL DEPENDENCIES
```bash
$ bundle install
```

## RUN MIGRATION
```bash
$ rails db:migrate
```

## RUN SERVER
```bash
$ rails s
```
## Tes using Postman
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
