FactoryGirl.define do
  factory :user do
    email "user@email.com"
    password "helloworld"
    password_confirmation "helloworld"
  end
end
