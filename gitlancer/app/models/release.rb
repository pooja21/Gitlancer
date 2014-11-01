class Release
  include MongoMapper::Document
  key :Title, String
  key :Description, String
  key :CreationDateTime, DateTime
  key :Type, String
  key :RepositoryId, Integer
  key :CreatedByUserId, Integer
  key :ModifyByUserId, Integer
  key :ModifyDateTime, DateTime
  key :Attachments, Attachment
  belongs_to :Repository


end