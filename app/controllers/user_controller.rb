# frozen_string_literal: true

class UserController < ApplicationController
  def index
  end

  def new
  end
  
  def create
    @user = User.new
    # if @user.save
    # end
  end
end
