require "rails_helper"

RSpec.describe LoginController do
    describe "POST create" do
        it "creates a session" do
            # user = User.create(username: 'Mammadu', email: 'email@gmail.com', name: 'Mammadu') #add item to database
            post :create, params: { email: 'email@gmail.com' }
            expect(session[:current_user]).to eq 'email@gmail.com'
        end
    end
end