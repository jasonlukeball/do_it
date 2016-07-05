FactoryGirl.define do
  factory :todo do
    name "MyString"
    user user
    list list
  end
end
