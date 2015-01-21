class User
  include MongoMapper::Document

 # key :UserId, String
  key :userName, String, :required => true
  key :email, String, :required => true
  key :password, String, :required => true, :unique => true
  key :password_confirmation

  #key :Company, String
  #key :NotificationType, String
  #key :NotificationMedium, String
  #key :DateOfJoining, DateTime
  #key :ImagePath, String
  #key :TeamId, String
  #key :OrganizationId, String
  #key :Street1, String
  #key :Street2, String
  #key :Country, String
  #key :PostalCode, String
  #key :Timezone, Time
  #key :SecurityPhoneNo, String
  #key :VerificationMethod, String
  #key :Bidder, Boolean


  validates_length_of :userName, :within => 6..15
  validates_length_of :password, :within => 6..15
  validates :email, format: { with: /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/ }

  def self.authenticate(username_or_email="", login_password="")

    if  email.match(username_or_email)
      user = User.find_by_email(username_or_email)
    else
      user = User.find_by_username(username_or_email)
    end

    if user && user.match_password(login_password)
      return user
    else
      return false
    end
  end

  def match_password(login_password="")
    encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
  end



  def encrypt_password
    unless password.blank?
      self.salt = BCrypt::Engine.generate_salt
      self.encrypted_password = BCrypt::Engine.hash_secret(password, salt)
    end
  end

  def clear_password
    self.password = nil
  end


  #key :SSHKeys, SSHKey
  #key :TwoFactorAuthentication, TwoFactorAuthentication
  #key :Payment, Payment
  #key :PaymentHistory, PaymentHistory
  #key :DeviceHistory, DeviceHistory
end


