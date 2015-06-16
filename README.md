# Mongo Student Scores

### Description

This program interacts with a Mongo database of around 200 students to drop the lowest homework score.

### Schema

Each record in the collection is set up as follows:

```Javascript
{
   "_id" : 1,
   "name" : "Fred Flinstone",
   "scores" : [
      {
         "type": "exam",
         "score": 4.4215645648476
      },
      {
         "type": "quiz",
         "score": 85.12354897168
      },
      {
         "type": "homework",
         "score": 56.15654789778
      },
      {
         "type": "homework",
         "score": 37.85488418879
      }
    ]
  }
  ```

### Seeding data

Use the attached students.json file to seed the mongo database.

`$ mongoimport -d school -c students < students.e7ed0a289cbe.json `

### Executing the Program

Ensure mongod is running, then execute the ruby program

`$ mongod `

`$ ruby main.rb`
