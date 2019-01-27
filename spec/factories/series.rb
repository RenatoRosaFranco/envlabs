FactoryBot.define do
  factory :series, class: 'Serie' do
    name { "MyString" }
    description { "MyString" }
    slug { "MyString" }
    tags { "MyString" }
    category { nil }
  end
end
