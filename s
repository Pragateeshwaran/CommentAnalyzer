Certainly. I'll provide MongoDB aggregation queries for all 20 questions. I'll assume the collection name is "persons" for these queries. Here are the answers:

1. Display all the active users:
```javascript
db.persons.aggregate([
  { $match: { isActive: true } }
])
```

2. Count and display the number of users by gender:
```javascript
db.persons.aggregate([
  { $group: { _id: "$gender", count: { $sum: 1 } } }
])
```

3. Display the users recorded after "2020-01-01":
```javascript
db.persons.aggregate([
  { $match: { registered: { $gt: new Date("2020-01-01") } } }
])
```

4. Display the user with a specific eye color as "blue":
```javascript
db.persons.aggregate([
  { $match: { eyeColor: "blue" } }
])
```

5. Count and display the number of users for each favorite fruit:
```javascript
db.persons.aggregate([
  { $group: { _id: "$favoriteFruit", count: { $sum: 1 } } }
])
```

6. Display a list of all unique tags used by users:
```javascript
db.persons.aggregate([
  { $unwind: "$tags" },
  { $group: { _id: "$tags" } }
])
```

7. Display the users who are working for the company "YURTURE":
```javascript
db.persons.aggregate([
  { $match: { company: "YURTURE" } }
])
```

8. Display the age of all users in months:
```javascript
db.persons.aggregate([
  { $project: { 
      name: 1, 
      ageInMonths: { $multiply: ["$age", 12] } 
    } 
  }
])
```

9. Display the most recently registered user by sorting the group:
```javascript
db.persons.aggregate([
  { $sort: { registered: -1 } },
  { $limit: 1 }
])
```

10. Display the group users by their company and count each group:
```javascript
db.persons.aggregate([
  { $group: { _id: "$company", count: { $sum: 1 } } }
])
```

11. Display the user who have more than 3 tags:
```javascript
db.persons.aggregate([
  { $match: { $expr: { $gt: [{ $size: "$tags" }, 3] } } }
])
```

12. Display the users whose age is between 20 and 30:
```javascript
db.persons.aggregate([
  { $match: { age: { $gte: 20, $lte: 30 } } }
])
```

13. Display the users with e-mail address from the domain "@digitalus.com":
```javascript
db.persons.aggregate([
  { $match: { email: /@digitalus\.com$/ } }
])
```

14. Sort the users by age and display the top 5 youngest users:
```javascript
db.persons.aggregate([
  { $sort: { age: 1 } },
  { $limit: 5 }
])
```

15. Display the users based on location "Italy":
```javascript
db.persons.aggregate([
  { $match: { "address.country": "Italy" } }
])
```

16. Display the users who have the tag "fugiat" and count them:
```javascript
db.persons.aggregate([
  { $match: { tags: "fugiat" } },
  { $count: "usersWithFugiatTag" }
])
```

17. Categorize the users into age groups and count each group:
```javascript
db.persons.aggregate([
  { $bucket: {
      groupBy: "$age",
      boundaries: [0, 20, 40, 60, 80, 100],
      default: "80+",
      output: {
        count: { $sum: 1 }
      }
    }
  }
])
```

18. Count the number of users whose age is less than 25:
```javascript
db.persons.aggregate([
  { $match: { age: { $lt: 25 } } },
  { $count: "usersUnder25" }
])
```

19. Display the users with "blue" eye color and sort them by age:
```javascript
db.persons.aggregate([
  { $match: { eyeColor: "blue" } },
  { $sort: { age: 1 } }
])
```

20. Add a field as senior if the user's age is above 65:
```javascript
db.persons.aggregate([
  { $addFields: {
      isSenior: { $cond: { if: { $gt: ["$age", 65] }, then: true, else: false } }
    }
  }
])
```

These queries should work with the data structure you described. However, please note that some queries might need adjustment based on the exact structure of your JSON data. If you encounter any issues or need further explanation for any query, please let me know.
