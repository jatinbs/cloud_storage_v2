FactoryGirl.define do

  factory :user do
    email "jatin@example.com"
    password "password"
    password_confirmation "password"
  end

  factory :user2, class: User do
    email "jatin2@example.com"
    password "password"
    password_confirmation "password"
  end

end
