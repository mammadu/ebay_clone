# frozen_string_literal: true

class LoginController < ApplicationController

  def create
    email_address = params['address']
    if is_user(email_address)
      session[:current_user] = params['address']
      redirect_to user_index_url
    else
      redirect_to root_path
    end

  end

  private

  def is_user(email_address)
    return User.find_by email: email_address
  end

end
