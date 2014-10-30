class Email
  include MongoMapper::Document

  key :Userid, String
  key :Email, String
  key :Type, String
  key :CreationDatetime, DateTime
  key :ModifyDateTime, DateTime

  belongs_to :User
end