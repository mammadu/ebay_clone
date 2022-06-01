# frozen_string_literal: true

class LoginController < ApplicationController
  def create
    email_address = params['address']
    if is_user(email_address)
      session[:current_user] = params['address']
      redirect_to user_index_url
    else
      flash[:alert] = "Login information incorrect"
      redirect_to root_url
    end
  end

  private

  def is_user(email_address)
    return User.find_by email: email_address
  end
  #put in an interactor object?
  #maybe could be in User model, so it can be called in multiple places
end
