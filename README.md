```
As a user
So that I can reach a website quickly
I would like to see a list of my bookmarks

```

<img width="990" alt="Screenshot 2022-01-10 at 15 06 28" src="https://user-images.githubusercontent.com/76707857/148790323-adc17cb5-7b5f-49d5-805d-29b74e330943.png">

### To set up the database

Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### to run the Bookmark Manager app:

```
rackup -p 3000
```

To view bookmarks, navigate to `localhost:3000/bookmarks`.
