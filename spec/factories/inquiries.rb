FactoryGirl.define do
  factory :inquiry do
    subject { Faker::Cat.name }
    text { Faker::Lorem.paragraphs }
  end
end
