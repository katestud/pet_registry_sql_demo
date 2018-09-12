# Overview

This project was created for demo purposes only, to introduce SQL concepts to Momentum Learning's back-end class.

# Setup

```
bundle install
```

```
rails db:create && rails db:migrate && rails db:seed
```

# Let's learn some SQL!

For demo purposes, we'll use [SQLiteBrowser](https://sqlitebrowser.org/). To load the data in the database, click `Open Database` and select the `db/development.sqlite3` file.

## Explore the Data

Check out the `Database Structure` tab and explore the various tables (`owners`, `dogs`, and `phone_numbers`). What sort of data are we storing? How are these records associated with one another?

## Generate Some Queries

Navigate to the Execute SQL tab and let's find the following.

* Find all owners.
* Find all owners that have the last name Smith, or the title Dr. Then, find just their first names.
* Find the 5 most recently updated phone numbers. Find the most recently updated phone number (using limit and max).
* Find the names of all the Shiba Inus.
* Find the number of dogs in each dog breed. Find the breed with the most dogs.

Now let's look at more than one table.

* Find owners and their dogs.
* Do all owners have dogs? How many dogs does each owner have?  (What if we try to JOIN without an ON clause?)
* What owners _don't_ have a dog?

## Some Questions
* What do WHERE conditions filter on?
* What are the multiple ways to find a max value in the column? Which do you think is more performant? How might we do some of these actions in ruby?
* What are the scenarios where you might get an `ambiguous column name` error?

## Helpful References

* [Visual Representation of SQL Joins](https://www.codeproject.com/Articles/33052/Visual-Representation-of-SQL-Joins)
* [SQL Functions](https://www.w3schools.com/sql/sql_count_avg_sum.asp)
* [N+1 Queries](https://semaphoreci.com/blog/2017/08/09/faster-rails-eliminating-n-plus-one-queries.html)
