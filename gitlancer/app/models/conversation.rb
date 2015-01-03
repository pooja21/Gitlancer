class Conversation
  include MongoMapper::Document
  key :Status, String
  key :TimeDate, DateTime
  key :PullRequestId, String
  key :ActivityId, String
  key :CreatedByUserId, String
  key :CreationDateTime, DateTime
end