require 'data_mapper'
require 'dm-postgres-adapter'



class Bookmark

	include DataMapper::Resource

	property :url,        String
	property :id,         Serial
  property :name,       String

end


DataMapper.setup(:default, 'postgres://localhost/bookmarks')
DataMapper.finalize
DataMapper.auto_upgrade!
