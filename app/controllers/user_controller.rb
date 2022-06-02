# frozen_string_literal: true

class UserController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    # if @user.save
    # end
  end
end
