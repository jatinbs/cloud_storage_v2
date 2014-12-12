require 'rails_helper'

RSpec.describe "FileUploads", :type => :feature do

  describe "GET /file_uploads" do

    before :each do
      @user ||= FactoryGirl.create :user
      visit user_session_path
      fill_in "user[email]", with: @user.email
      fill_in 'user[password]', with: @user.password
      click_button 'Log in'
    end

    it "works!" do
      visit file_uploads_path
      expect(page.status_code).to eq(200)
    end
  end

  describe "create_file_upload" do

    before :each do
      @user ||= FactoryGirl.create :user
      visit user_session_path
      fill_in "user[email]", with: @user.email
      fill_in 'user[password]', with: @user.password
      click_button 'Log in'
    end

    it "successfully uploads a file qnd then can delete it" do
      visit new_file_upload_path
      expect(page.status_code).to eq(200)
      attach_file "file_upload[file]", Rails.root.join('spec', 'test_uploads', 'test2.jpg')
      click_button "Save File"
      expect(page).to have_content('test2.jpg')
      expect(page).to have_selector('a', text: 'Download')
    end

  end

end
