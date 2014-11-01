class Repository
  include MongoMapper::Document
  key :Id, String, :required => true
  key :Name, String
  key :CreationDateTime, Date
  key :SourceLanguage, String
  key :Type, String
  key :Forked, Boolean
  key :UserId, String
  key :CreatedByUserId, String
  key :ModifyByUserId, String
  key :ModifyDateTime, Date

  key :Branches, Branch
  key :Releases, Release
  key :Tags, Tag
  key :Watchers, Watcher
  key :Stargazers, Stargazer
  key :Collaborators, Collaborator
  key :Files, File


  belongs_to :User

end


