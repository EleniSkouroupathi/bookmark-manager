require 'data_mapper'
require 'dm-postgres-adapter'
DataMapper.setup(:default, 'postgres://localhost/bookmarks')


class Bookmark

	include DataMapper::Resource

	property :url,        String
	property :id,         Serial
  property :name,       String

end

# DataMapper::Logger.new($stdout, :debug)
DataMapper.finalize
DataMapper.auto_upgrade!
