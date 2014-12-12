require 'rails_helper'

RSpec.describe "file_uploads/show", :type => :view do
  before(:each) do
    @file_upload = assign(:file_upload, FileUpload.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
