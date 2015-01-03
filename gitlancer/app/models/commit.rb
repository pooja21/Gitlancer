class Commit
  include MongoMapper::Document

  key :Title, String
  key :CommitDatetime, DateTime
  key :FileId, String
  key :PullRequestId, String
  key :UserId, String

  belongs_to :File
  belongs_to :PullRequest
end