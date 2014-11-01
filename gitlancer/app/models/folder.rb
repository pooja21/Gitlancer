class Folder
  include MongoMapper::Document
  key :Name, String
  key :RepositoryId, String
  key :ParentFolderId, String
  key :Files, File

  belongs_to :Repository
end