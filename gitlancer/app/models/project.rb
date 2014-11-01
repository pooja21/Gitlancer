class Project
  include MongoMapper::Document

  key :UserId, String
  key :Category, String
  key :Job, String
  key :Name, String
  key :Type, String
  key :Status, String
  key :DaysOfCompletion, Integer
  key :BudgetCountry, String
  key :BudgetType, String

  key :Payment, Payment

  belongs_to :User

end