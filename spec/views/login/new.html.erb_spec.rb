# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'login/new' do
  context 'when the user lands on the login page' do
    it 'has a login button' do
      render # creates a page and assigns it to a variable

      expect(rendered).to have_button('login')
    end

    it 'has a button to create an account' do
      render
      expect(rendered).to have_button('create account')
    end
  end
end
