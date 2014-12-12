FactoryGirl.define do


  factory :file_upload do
    file { fixture_file_upload(Rails.root.join('spec', 'test_uploads', 'test.jpg'), 'image/jpg') }
  end

  factory :file_upload2, class: FileUpload do
    file { fixture_file_upload(Rails.root.join('spec', 'test_uploads', 'test2.jpg'), 'image/jpg') }
  end

end
