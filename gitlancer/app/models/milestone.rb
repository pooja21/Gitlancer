class Milestone
  include MongoMapper::Document

  key :Name, String
  key :Status, String
  key :DueDate, Date
  key :CreationDateTime, DateTime
  key :PullRequestId, String
  key :CreatedByUserId, String
  key :ModifyByUserId, String
  key :ModifyDateTime, DateTime
  key :ProjectId, String

  belongs_to :PullRequest

end