FactoryBot.define do
  factory :user do
    name { "John" }
    email  { "johndoe@gmail.com" }
    password { SecureRandom.uuid }
  end
end
