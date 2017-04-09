FactoryGirl.define do
  factory :admin do
    email "user@email.com"
    password "helloworld"
    password_confirmation "helloworld"
  end
end
