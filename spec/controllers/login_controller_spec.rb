# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LoginController do
  before(:each) do
    @test_row = {
      name: 'test_name',
      username: 'test_username',
      email: 'email@gmail.com',
      password: 'test_pass'
    }
    @user = User.create(@test_row) # add item to database
  end

  # public method tests
  describe 'POST create' do
    it 'creates a session' do
      post :create, params: { email: @test_row[:email], password: @test_row[:password] }
      expect(session[:current_user]).to eq @test_row[:email]
    end

    it 'redirects to the user index page' do
      response = post :create, params: { email: @test_row[:email], password: @test_row[:password] }
      expect(response).to redirect_to(user_index_url)
    end

    it 'creates a flash warning if email information is incorrect' do
      @test_row[:email] = nil
      post :create, params: { email: @test_row[:email], password: @test_row[:password] }
      expect(flash).to be_present
    end

    it 'creates a flash warning if password is incorrect' do
      @test_row[:password] = nil
      post :create, params: { email: @test_row[:email], password: @test_row[:password] }
      expect(flash).to be_present
    end
  end
end
