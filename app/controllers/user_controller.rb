# frozen_string_literal: true

class UserController < ApplicationController
  def index
    puts session[:current_user]
  end
end
