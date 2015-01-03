class Tag
  include MongoMapper::Document
  key :Name, String
  key :Version, String
  key :CreationDateTime, DateTime
  key :RepositoryId, Integer
  key :CreatedByUserId, Integer
  key :ModifyByUserId, Integer
  key :ModifyDateTime, DateTime

  belongs_to :Repository
  belongs_to :Release
end