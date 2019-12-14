FactoryBot.define do
  factory :book do
    sequence(:title)  {|n| "#{Faker::Book.title} #{n}"}
    publication_year  {rand(1800..2019).to_s}
    pages             {rand(100..1000)}
  end
end