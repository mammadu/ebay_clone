require 'rails_helper'

RSpec.describe LoginController do
  before(:each) do
    @username = 'test_username'
    @email = 'email@gmail.com'
    @name = 'test_name'
    @user = User.create(username: @username, email: @email, name: @name) # add item to database
  end

  after(:all) do
    @user = User.destroy_all
  end

  # public method tests
  describe 'POST create' do
    it 'creates a session' do
      post :create, params: { address: @email }
      expect(session[:current_user]).to eq @email
    end

    it 'redirects to the user index page' do
      response = post :create, params: { address: @email }
      expect(response).to redirect_to(user_index_url)
    end
  end

  # private method tests
  describe 'Private methods' do
    it 'checks if the user email is in the account database' do
      login_controller = LoginController.new
      result = login_controller.send(:is_user, @email)
      expect(result[:email]).to eq(@email)
    end
  end
end
