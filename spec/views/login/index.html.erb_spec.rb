require 'rails_helper'

RSpec.describe 'login/new' do
    context 'when the user lands on the login page' do
        it 'has a form to enter the username' do
            # user = User.create(username: 'Mammadu', email: 'email@gmail.com', name: 'Mammadu') #add item to database
            # assign(:user, user) #passes this to view

            render #creates a page and assigns it to a variable

            expect(rendered).to match /Ebay/
        end
    end
end
