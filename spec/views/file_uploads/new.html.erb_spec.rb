require 'rails_helper'

RSpec.describe "file_uploads/new", :type => :view do
  before(:each) do
    assign(:file_upload, FileUpload.new())
  end

  it "renders new file_upload form" do
    render

    assert_select "form[action=?][method=?]", file_uploads_path, "post" do
    end
  end
end
