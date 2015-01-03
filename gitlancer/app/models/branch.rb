class Branch
  include MongoMapper::Document
  key :Name, String
  key :CreationDateTime, DateTime
  key :CreatedByUserId, Integer
  key :ModifyByUserId, Integer
  key :ModifyDateTime, DateTime

  belongs_to :Repository
end