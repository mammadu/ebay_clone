# frozen_string_literal: true

class User < ApplicationRecord
  validates :name,  :username, :email, presence: true
  validates :email, uniqueness: true
  validates :email, email: true
  has_secure_password

  def self.get_user(email_address)
    User.find_by email: email_address
  end

  def self.authenticate_user(email_address, password)
    user = get_user(email_address)
    return user if user&.authenticate(password)
  end
end
