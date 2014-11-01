class PaymentHistory
  include MongoMapper::Document

  key :Amount, String
  key :CreationDateTime, DateTime
  key :BillReceiptPath, String
  key :ModifyDateTime, DateTime

  belongs_to :User
end