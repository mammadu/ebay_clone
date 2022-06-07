# frozen_string_literal: true

class User < ApplicationRecord
  validates :name,  :username, :email, presence: true
  validates :email, uniqueness: true

  def user?(email_address)
    User.find_by email: email_address
  end
end
