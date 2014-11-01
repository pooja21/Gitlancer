class File
  include MongoMapper::Document
  key :Name, String
  key :Size, Integer
  key :RepositoryId, String
  key :CreationDateTime, DateTime
  key :FolderId, String
  key :CreatedByUserId, String
  key :ModifyByUserId, String
  key :ModifyDateTime, DateTime

  key :Commits,Commit
  belongs_to :Folder

end