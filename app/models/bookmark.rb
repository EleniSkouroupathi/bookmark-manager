require 'data_mapper'
require 'dm-postgres-adapter'



class Bookmark

	include DataMapper::Resource

	property :url,        String
	property :id,         Serial
  property :name,       String

end


DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
