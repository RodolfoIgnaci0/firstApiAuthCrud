#POSTMAN

POST localhost:3000/articles
{
	"title": "hola",
	"body": "chao"
}

DELETE localhost:3000/articles/5
{
  "id" : 6
}

PATCH localhost:3000/articles/6
{
	"title": "titulo",
	"body": "body"
}
