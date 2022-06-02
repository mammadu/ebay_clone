# frozen_string_literal: true

class User < ApplicationRecord
    validates :name,  :username, :email, presence: true
    validates :email, uniqueness: true
end
