# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @test_row = {
      name: 'test_name',
      username: 'test_username',
      email: 'email@gmail.com',
      password: 'test_pass'
    }
  end

  after(:each) do
    User.destroy_all
  end

  it 'has a name column' do
    expect(User.column_names).to include('name')
  end

  it 'has a username column' do
    expect(User.column_names).to include('username')
  end

  it 'has a email column' do
    expect(User.column_names).to include('email')
  end

  it 'has a password_digest column' do
    expect(User.column_names).to include('password_digest')
  end

  it 'requires a name to save to the database' do
    @test_row[:name] = nil
    user = User.create(@test_row)
    expect(user.valid?).to eq(false)
  end

  it 'requires a username to save to the database' do
    @test_row[:username] = nil
    user = User.create(@test_row)
    expect(user.valid?).to eq(false)
  end

  it 'requires an email to save to the database' do
    @test_row[:email] = nil
    user = User.create(@test_row)
    expect(user.valid?).to eq(false)
  end

  it 'requires a password to save to the database' do
    @test_row[:password] = nil
    user = User.create(@test_row)
    expect(user.valid?).to eq(false)
  end

  it 'does not allow save repeat email addresses' do
    User.create(@test_row)
    user2 = User.create(@test_row)
    expect(user2.valid?).to eq(false)
  end
end
