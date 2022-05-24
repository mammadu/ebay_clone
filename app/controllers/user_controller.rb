# frozen_string_literal: true

class UserController < ApplicationController
  def index
    @user = User.all
  end
end
