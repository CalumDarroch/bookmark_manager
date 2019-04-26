require 'pg'

class Bookmark

  attr_reader :all

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test' )
    else
      conn = PG.connect( dbname: 'bookmark_manager' )
    end
    results = conn.exec( "SELECT * FROM bookmarks;" )
    results.map { |result| result['url'] }
  end

end
