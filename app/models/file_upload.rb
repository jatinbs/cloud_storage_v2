class FileUpload < ActiveRecord::Base
  belongs_to :user

  has_attached_file :file, :default_url => "/images/missing.png"

end
