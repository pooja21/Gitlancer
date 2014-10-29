class Team
  include MongoMapper::Document

  key :Id, String
  key :Name, String
  key :PermissionLevel, String
  key :UserId, String
  key :OrganizationId, String
  key :CreationDateTime, DateTime
  key :ModifyDateTime, DateTime

  belongs_to :User
  belongs_to :Organization
end