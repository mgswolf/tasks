# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name 'Joe'
    sequence(:email)  {|n| "user#{n}@example.com" }
    password 'teste123'
    sequence(:cpf) {|n| "12345678#{n}"}
  end
end
