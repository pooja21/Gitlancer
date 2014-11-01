class PullRequest
  include MongoMapper::Document
  key :Title, String
  key :Status, String
  key :CIStatus, String
  key :SourceRepoId, String
  key :DestinationRepoId, String
  key :SourceBranchId, String
  key :DestinationBranchId, String
  key :CreationDateTime, DateTime
  key :AssignerUserId, String
  key :AuthorUserId, String
  key :CreatedByUserId, String
  key :ModifyByUserId, String
  key :ModifyDateTime, DateTime

  key :Commits, Commit
  key :Milestones, Milestone
  key :Labels, Label

  belongs_to :Repository
  belongs_to :Label

end