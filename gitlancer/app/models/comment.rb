class Comment
  include MongoMapper::Document
  key :Content, String
  key :TimeDate, DateTime
  key :ConversationId, String
  key :ParentCommentId, String
  key :CreatedByUserId, String
end