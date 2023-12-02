FactoryBot.define do
  factory :user do
    nickname {Faker::Name.name}
    email {Faker::Internet.email}
    password {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    last_name {"山田"}
    last_kana_name {"ヤマダ"}
    first_name {"太郎"}
    first_kana_name {"タロウ"}
    birthday {Faker::Date.between(from: '1940-01-10', to: '2017-12-31')}
  end
end
