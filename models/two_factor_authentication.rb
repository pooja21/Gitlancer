class TwoFactorAuthentication
  include MongoMapper::Document

  key :GitCodeRecievingMedium, String
  key :CreationDateTime, DateTime
  key :ModifiedDateTime, DateTime

  belongs_to :User
end