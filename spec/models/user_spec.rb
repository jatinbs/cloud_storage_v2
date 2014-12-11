require 'rails_helper'

RSpec.describe User, :type => :model do

  before(:each) do
    @user = FactoryGirl.create(:user)
  end

  it "generates a hash on creation" do
    f = FactoryGirl.create(:user2)
    expect(f).to be_a(User)
  end

  it "should not allow duplicate emails" do
    expect do
      f = FactoryGirl.create(:user)
    end.to raise_error("Validation failed: Email has already been taken")
  end

  it "should require email" do

  end

  it "should require password" do

  end

  it "should ensure that password_confirmation is the same" do

  end

end
