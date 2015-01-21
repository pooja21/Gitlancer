class Organization
  include MongoMapper::Document

  key :Id, String
  key :UserId, String
  key :Name, String
  key :URL, String
  key :CreationDateTime, DateTime
  key :ModifyDateTime, DateTime

  belongs_to :User
end