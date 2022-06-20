# frozen_string_literal: true

class User < ApplicationRecord
  validates :name,  :username, :email, presence: true
  validates :email, uniqueness: true
  validates :email, email: true
  has_secure_password

  def self.get_user(email_address)
    User.find_by email: email_address
  end
end
