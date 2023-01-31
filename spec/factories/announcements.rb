FactoryBot.define do
  factory :announcement do
    published_at { "2023-01-31 18:59:09" }
    announcement_type { "MyString" }
    name { "MyString" }
    description { "MyText" }
  end
end
