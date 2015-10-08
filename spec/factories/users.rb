FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    admin false
    factory :admin_user do
      admin true
    end
  end

end
