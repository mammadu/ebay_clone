# frozen_string_literal: true

class LoginController < ApplicationController
  def new; end

  def create
    session[:current_user] = params['email']
  end
    
end
