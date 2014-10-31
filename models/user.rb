class User
  include MongoMapper::Document

  key :Id, String :required => true
  key :Name, String
  key :Password, String, :required => true
  key :UserName, String, :required => true
  key :Company, String
  key :NotificationType, String
  key :NotificationMedium, String
  key :DateOfJoining, DateTime
  key :ImagePath, String
  key :TeamId, String
  key :OrganizationId, String
  key :Street1, String
  key :Street2, String
  key :Country, String
  key :PostalCode, String
  key :Timezone, Time
  key :SecurityPhoneNo, String
  key :VerificationMethod, String
  key :Bidder, Boolean

  validates_length_of :UserName, :within => 6..15
  validates_length_of :Password, :within => 6..15

  key :SSHKeys, SSHKey
  key :TwoFactorAuthentication, TwoFactorAuthentication
  key :Payment, Payment
  key :PaymentHistory, PaymentHistory
  key :DeviceHistory, DeviceHistory
end


