class Feedback
  include MongoMapper::Document

  key :UserId, String
  key :SkillType, String
  key :StartTime, Time
  key :QualityWork, String
  key :Communication, String
  key :Expertise, String
  key :WouldHireAgain, Boolean
  key :Professionalism, String
  key :CompletionRate, String
  key :OnBudget, String
  key :OverAllRate, Integer
  key :ProjectId, String

  belongs_to :User
  belongs_to :Project
end