class Payment
  include MongoMapper::Document

  key :CardType, String
  key :Country, String
  key :IsTrial, Boolean
  key :Amount, String
  key :PaymentType, String
  key :Flag, Boolean

  belongs_to :User
  belongs_to :Project

end