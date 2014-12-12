require 'rails_helper'

RSpec.describe "file_uploads/index", :type => :view do

  before(:each) do
    @current_user = FactoryGirl.create(:user)
    sign_in @current_user
  end

  it "renders a list of file_uploads" do

    @file_upload_attr = attributes_for(:file_upload2)
    assign(:file_uploads, [
        @current_user.file_uploads.create!(@file_upload_attr),
        @current_user.file_uploads.create!(@file_upload_attr)
    ])
    render
    expect(rendered).to have_selector('.file_upload', count: 2)
  end



end
