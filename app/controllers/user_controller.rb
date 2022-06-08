# frozen_string_literal: true

class UserController < ApplicationController
  def index
    @user = User.find_by(email: session[:current_user])
  end

  def new; end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:current_user] = user_params[:email]
      redirect_to user_index_path
    else
      message = @user.errors.full_messages
      flash[:alert] = message
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.permit(:name, :username, :email)
  end
end
