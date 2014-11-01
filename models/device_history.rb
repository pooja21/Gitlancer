class DeviceHistory
  include MongoMapper::Document

  key :IP, String
  key :SignInDate, Date
  key :Location, String
  key :Browser, String
  key :OS, String

  belongs_to :User
end