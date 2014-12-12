require 'rails_helper'

RSpec.describe "file_uploads/index", :type => :view do
  before(:each) do
    assign(:file_uploads, [
      FileUpload.create!(),
      FileUpload.create!()
    ])
  end

  it "renders a list of file_uploads" do
    render
  end
end
