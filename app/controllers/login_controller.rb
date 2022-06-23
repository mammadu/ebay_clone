# frozen_string_literal: true

class LoginController < ApplicationController
  def create
    email_address = params['email']
    password = params['password']
    if User.authenticate_user(email_address, password)
      session[:current_user] = params['email']
      redirect_to user_index_url
    else
      flash[:alert] = I18n.t 'incorrect_login'
      redirect_to root_url
    end
  end
end
