class SSHKey
  include MongoMapper::Document

  key :Name, String
  key :Key, String
  key :CreationDateTime, DateTime
  key :ModifiedDateTime, DateTime

  belongs_to :User
end