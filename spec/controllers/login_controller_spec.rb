require 'rails_helper'

RSpec.describe LoginController do
  # public method tests
  describe 'POST create' do
    it 'creates a session' do
      post :create, params: { address: 'email@gmail.com' }
      expect(session[:current_user]).to eq 'email@gmail.com'
    end

    it 'redirects to the user index page' do
      response = post :create, params: { email: 'email@gmail.com' }
      expect(response).to redirect_to(user_index_path)
    end
  end

  # private method tests
  describe 'Private methods' do
    it 'checks if the user email is in the account database' do
      login_controller = LoginController.new
      username = 'test_username'
      email = 'email@gmail.com'
      name = 'test_name'
      User.create(username: username, email: email, name: name) # add item to database

      result = login_controller.send(:is_user, email)
      expect(result[:email]).to eq(email)
    end
  end
end
