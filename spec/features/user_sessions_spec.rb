require 'rails_helper'

feature "UserSessions", :type => :feature do

  describe "user login flow" do

    it "works!" do

      visit new_user_session_path
      expect(page.status_code).to equal(200)

      @user ||= FactoryGirl.create :user
      visit user_session_path
      fill_in "user[email]", with: @user.email
      fill_in 'user[password]', with: @user.password
      click_button 'Log in'

      expect(page.status_code).to equal(200)
      expect(current_path).to eq(file_uploads_path)

      expect(page).to have_content(@user.email)

    end

  end

end
