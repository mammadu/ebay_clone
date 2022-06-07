# frozen_string_literal: true

class UserController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if !@user.save
      flash[:alert] = "please fill out all fields"
      redirect_to new_user_path
    end
  end

  private 

  def user_params
    p params
    params.permit(:name, :username, :email)
  end

end
