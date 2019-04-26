# Bookmark Manager #

## What criteria should this program satisfy?
```shell
As a user,
so that I can see which bookmarks I have made,
I would like to print a list of bookmarks.
```

## Domain Model

  ![Domain Model](https://github.com/Hannah-Frost/bookmark-manager/blob/master/images/domain_model.png)



  bundle
  ```	```


   ### To set up the database

   Connect to `psql` and create the `bookmark_manager` database:

   ```
  CREATE DATABASE bookmark_manager;
  ```

   To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

   ### To run the Bookmark Manager app:	### To run the Bookmark Manager app:


   ```	```
  rackup -p 3000	rackup -p 3000
  ```	```


   To view bookmarks, navigate to `localhost:3000/bookmarks`	To view bookmarks, navigate to `localhost:3000/bookmarks`.


   ### To run tests:	### To run tests:
