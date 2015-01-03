class Disputes
  include MongoMapper::Document

  key :ProjectId, String
  key :UserId, String
  key :UserId, String
  key :DisputeAmount, String
  key :TimeToRespond, Time
  key :DateOfClosing. Date
  key :Result, String
  key :IsActive, Boolean

  belongs_to :User
  belongs_to :Project
end