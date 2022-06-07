# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LoginController do
  before(:each) do
    @name = 'test_name'
    @username = 'test_username'
    @email = 'email@gmail.com'
    @user = User.create(name: @name, username: @username, email: @email) # add item to database
  end

  # public method tests
  describe 'POST create' do
    it 'creates a session' do
      post :create, params: { email: @email }
      expect(session[:current_user]).to eq @email
    end

    it 'redirects to the user index page' do
      response = post :create, params: { email: @email }
      expect(response).to redirect_to(user_index_url)
    end

    it 'creates a flash warning if login information is incorrect' do
      post :create, params: { address: 'incorrect_email@email.com' }
      expect(flash).to be_present
    end
  end
end
