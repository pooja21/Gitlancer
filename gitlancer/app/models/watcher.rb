class Watcher
  include MongoMapper::Document
  key :UserId, Integer
  key :RepositoryId, Integer

  belongs_to :Repository
end