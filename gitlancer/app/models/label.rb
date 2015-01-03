class Label
  include MongoMapper::Document
  key :Name, String
  key :Type, String
  key :CreationDateTime, DateTime
  key :CreatedByUserId, String
  key :ModifyByUserId, String
  key :ModifyDateTime, DateTime

  key :PullRequests, PullRequest

  belongs_to :PullRequest
end