class User < ApplicationRecord
  before_save { self.email = email.downcase }
  # Name has to presence, Name Length has to be 50
  validates :name, presence: true, length: { maximum: 50 }
  #Constant Variable With REGEX
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #Email has to be presence and length should be 255 if not failed to save and also email should unique
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  #validate password to be presence and minimum of the password is 6
  validates :password, presence: true, :length: { minimum: 6 }
  has_secure_password
end
