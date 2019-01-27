FactoryBot.define do
  factory :lesson do
    title { "MyString" }
    description { "MyText" }
    slug { "MyString" }
    video_path { "MyString" }
    content { "MyText" }
    tags { "MyString" }
    category { nil }
  end
end
