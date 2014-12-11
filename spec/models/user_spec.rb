require 'rails_helper'

RSpec.describe User, :type => :model do

  before(:each) do
    @user = create(:user)
    @user_attr = attributes_for(:user2)
  end

  it "should create a user with valid attributes" do
    f = create(:user2)
    expect(f).to be_a(User)
  end

  it "should not allow duplicate emails" do
    expect do
      f = create(:user)
    end.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Email has already been taken")
  end

  it "should require email" do
    expect do
      @user_attr[:email] = ''
      f = User.create!(@user_attr)
    end.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "should require password" do
    expect do
      @user_attr[:password] = ''
      f = User.create!(@user_attr)
    end.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "should ensure that password_confirmation is the same" do
    expect do
      @user_attr[:password_confirmation] = 'asdsa'
      f = User.create!(@user_attr)
    end.to raise_error(ActiveRecord::RecordInvalid)
  end

end
