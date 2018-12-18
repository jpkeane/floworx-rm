# == Schema Information
#
# Table name: engagements
#
#  id         :bigint(8)        not null, primary key
#  slug       :string           not null
#  code       :string           not null
#  name       :string           not null
#  project_id :bigint(8)
#  role_id    :bigint(8)
#  start_date :date
#  end_date   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :engagement do
    sequence(:code) { |n| "E#{n}" }
    sequence(:name) { |n| "Engagement #{n}" }
    project
    role
    start_date { Faker::Date.between(Time.zone.today, Time.zone.today + 6.months) }
    end_date { Faker::Date.between(Time.zone.today + 7.months, Time.zone.today + 12.months) }
  end
end
