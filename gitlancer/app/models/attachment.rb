class Attachment
  include MongoMapper::Document
  key :ReleaseId, String
  key :Path, String
  key :ProjectId, String
  key :IsRelease, Boolean
end