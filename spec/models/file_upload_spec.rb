require 'rails_helper'

RSpec.describe FileUpload, :type => :model do

  before(:each) do
    @file_upload = create(:file_upload)
    @file_upload_attr = attributes_for(:file_upload2)
  end

   it "should create a file with valid attributes" do
    f = create(:file_upload)
    expect(f).to be_a(FileUpload)
   end

  it "Should generate a valid uuid hash on file save" do
    f = create(:file_upload)
    expect(f.file_hash).to match(/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/i)
  end

  it "Should require a file input" do
    @file_upload_attr[:file] = nil
    expect do
      f = FileUpload.create!(@file_upload_attr)
    end.to raise_error(ActiveRecord::RecordInvalid)
  end

end
