require 'rails_helper'

RSpec.describe User, type: :model do

  it 'should create a valid user' do
    user = build(:user)
    expect(user).to be_valid
  end

  it 'should validate a user', focus: true do
    user = build(:user, email: nil)
    expect(user).to_not be_valid

    user2 = build(:user, username: nil)
    expect(user2).to_not be_valid
  end
end
