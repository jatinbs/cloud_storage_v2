class FileUpload < ActiveRecord::Base
  belongs_to :user

  has_attached_file :file, :default_url => "/images/missing.png"
  do_not_validate_attachment_file_type :file

end
