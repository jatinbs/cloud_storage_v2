require 'rails_helper'

RSpec.describe "file_uploads/show", :type => :view do
  before(:each) do
    @current_user = FactoryGirl.create(:user)
    sign_in @current_user

    @file_upload_attr = attributes_for(:file_upload2)
    @f = @current_user.file_uploads.create(@file_upload_attr)

    assign(:file_upload, @f)
  end

  it "should render the right file name" do
    render
    expect(rendered).to include(@f.file_file_name)
  end

  it "renders a download button with the corresponding download path" do
    render
    puts "a[href='#{download_path(file_hash: @f.file_hash)}'"
    expect(rendered).to have_link('Download', href: download_path(@f.file_hash))
  end

end
