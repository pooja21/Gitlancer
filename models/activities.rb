class Activities
  include MongoMapper::Document

  key :Name, String
  key :Description, String
  key :UserId, String
  key :ConversationId, Integer
  key :Flag, Boolean
  key :CreationDateTime, DateTime
  key :ModifyDateTime, DateTime
  key :ModifyUserId, Integer

  belongs_to :User
  belongs_to :Conversation
end