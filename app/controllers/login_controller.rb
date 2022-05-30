# frozen_string_literal: true

class LoginController < ApplicationController
  def new; end

  def create
    session[:current_user] = params['address']
    redirect_to user_index_path
  end

  private

  def is_user(email_address)
    return User.find_by email: email_address
  end

end
