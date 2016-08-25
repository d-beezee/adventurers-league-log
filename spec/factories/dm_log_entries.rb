FactoryGirl.define do
  factory :dm_log_entry do
    type { DmLogEntry }
    user { FactoryGirl.create :user }

    date_dmed       { Faker::Date.forward(365) }
    date_played     { Faker::Date.forward(366) }
    adventure_title { 'DDAL01-01 The Beginning' }
    session_num     { Faker::Number.between(1, 10) }
    xp_gained       { Faker::Number.between(200, 10_000) }
    gp_gained       { Faker::Number.between(200, 10_000) }
    downtime_gained { 10 }
    location_played { 'GenCon' }
    notes           { Faker::Company.bs }
  end
end
