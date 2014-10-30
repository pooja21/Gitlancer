class Follower
  include MongoMapper::Document

  key :UserId, String
  key :FollowersUserId, String
  key :FollowingUserId, String
  key :CreationDateTime, DateTime
  key :ModifiedDateTime, DateTime

  belongs_to :User
end