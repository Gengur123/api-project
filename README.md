# Animal API

#### By Arthur Lee

## Description
An animal shelter API that includes a list of animal types, the animals within those types, and the details about each animal. A user can make API calls to get, create, update, and delete animal types as well as specific animals within those types.

## Technologies Used
* _Ruby_
* _Postgres_
* _Sinatra_
* _Docker_
* _Rspec_
* _HTML_
* _Visual Studio code_


## Setup/Installation Requirements
* _Clone this repository_
* _Open terminal and type `git clone [git link]`_
* _Navigate to project directory using cd in terminal_
* _Open project in text editor `code .`_
* _Create a database by typing `bei rails db:create`_
* _Type `bei rake db:migrate` to finish creating the database_
* _Type `bei rake db:seed` to populate the database_
* _To run tests, type `bei rspec` in terminal_
* _To run the program, type `docker compose up --build` in terminal then navigate to a web browser and type `http://localhost:3000/`_

## API
 Action |  Route | Description
| :--- | --- | ---: |
| <span style="color:blue">Get</span> | /animals| _Fetches all animal types_ |
| <span style="color:green">Post</span> | /animals | _Creates an animal type_ |
| <span style="color:red">Delete</span> | /animals/{animal_id} | _Deletes an animal type_ |
| <span style="color:blue">Get</span> | /animals/{animal_id} | _Fetches a single animal type_ |
| <span style="color:gold">Patch</span> | /animals/{animal_id} | _Updates a single animal type_ |
| <span style="color:blue">Get</span> | /animals/{animal_id}/details | _Fetches all animals of a specific animal type_ |
| <span style="color:green">Post</span> | /animals/{animal_id}/details | _Creates an animal's details_     |
| <span style="color:red">Delete</span> | /animals/{animal_id}/details/{id} | _Deletes an animal's details_ |
| <span style="color:blue">Get</span> | /animals/{animal_id}/details/{id} | _Fetches a single animal's details_ |
| <span style="color:gold">Patch</span> | /animals/{animal_id}/details/{id} | _Updates a single animal's details_ |
| <span style="color:blue">Get</span> | /random | _Fetches a random animal's details_ |

## Examples Of API calls
GET ```http://localhost:3000/animals```
```
{
[{"id":1,"animal_type":"cat"},
{"id":2,"animal_type":"dog"},
{"id":3,"animal_type":"cat"},
{"id":4,"animal_type":"dog"},
{"id":5,"animal_type":"cat"},
{"id":6,"animal_type":"dog"},
{"id":7,"animal_type":"cat"},
{"id":8,"animal_type":"dog"}]
}
```
GET: ```http://localhost:3000/animals/1```
```
{
[{"id":1,"animal_type":"cat"},
}
```

GET: ```http://localhost:3000/animals/1/details/1```

```
{
"id":1,
"name":"Milo",
"breed":"Ukrainian Levkoy",
"gender":"Female","
"age":2, "
"weight":5,"
bio":"Crazy Cute","animal_id":1
}
```
POST ```http://localhost:3000/details``` 

Will post a new detail. You can add the animal and content by clicking on "Body" in Postman just below the URL and passing in key-value pairs.

PUT ```http://localhost:3000/detailss/:id```

will update a detail. Just as with the POST call, you'll pass in the parameters you want to update in the body by using key-value pairs.

DELETE ```http://localhost:3000/quotes/:id```

will delete a detail with the corresponding :id.


You can confirm that your POST, PUT and DELETE methods are working by checking the corresponding records in the Rails console. Note that you'll get a 404 - Not Found error if you try to retrieve an :id that doesn't exist.

## Known Bugs
* _No known bugs_

## License

[MIT](https://en.wikipedia.org/wiki/MIT_License)
Copyright (c) 2021 Arthur Lee
## Contact Information

_Arthur Lee [meleearthur@gmail.com](meleearthur@gmail.com)_