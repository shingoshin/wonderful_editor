FactoryBot.define do
  factory :user do
    # allow_password_change { Faker::Internet.password }
    # confirmation_sent_at {}
    # confirmation_token {}
    # confirmed_at {}
    # email { Faker::Internet.email }
    # encrypted_password { Faker::Internet.password }
    # image {}
    name { Faker::Name.name } # (max_length: 20) }
    nickname { Faker::Internet.username } # (max_length: 20) }
    # provider { "abc" }
    # remember_created_at {}
    # reset_password_sent_at { Faker::Internet.password }
    # reset_password_token { Faker::Internet.password }
    # tokens {}
    # uid { "abc" }
    # unconfirmed_email {}

    # 答えの書き方
    # name { Faker::Lorem.characters(number: Random.new.rand(1..30)) }
    sequence(:email) {|n| "#{n}_#{Faker::Internet.email}" }
    password { Faker::Internet.password(min_length: 8, max_length: 32, mix_case: true, special_characters: true) }
  end
end
