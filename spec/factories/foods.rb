# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :food do
    name "MyString"
    serving_size "MyString"
    calories 1
    protein 1
    carbohydrates 1
    fat 1
  end
end
