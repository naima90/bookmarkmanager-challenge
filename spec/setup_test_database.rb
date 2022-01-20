require 'pg'


def setup_test_database 
  p "setting up databse test"
  con = PG.connect(dbname: 'bookmark_manager_test')
  # clean the bookmarks table
  con.exec("TRUNCATE bookmarks;")
end