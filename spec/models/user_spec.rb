# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a name column' do
    expect(User.column_names).to include('name')
  end

  it 'has a username column' do
    expect(User.column_names).to include('username')
  end

  it 'has a email column' do
    expect(User.column_names).to include('email')
  end
end
