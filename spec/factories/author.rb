FactoryBot.define do
  factory :author do
    sequence(:name)   {|n| "#{Faker::FunnyName.name} #{n}"}
  end
end