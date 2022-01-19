require 'pg'

# p "setting up databse test"

def setup_test_database 
  con = PG.connect(dbname: 'bookmark_manager_test')
  # clean the bookmarks table
  con.exec("TRUNCATE bookmarks;")
end