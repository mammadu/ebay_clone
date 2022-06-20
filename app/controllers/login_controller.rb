# frozen_string_literal: true

class LoginController < ApplicationController
  def create
    email_address = params['email']
    if User.get_user(email_address)
      session[:current_user] = params['email']
      redirect_to user_index_url
    else
      flash[:alert] = I18n.t 'incorrect_login'
      redirect_to root_url
    end
  end
end
