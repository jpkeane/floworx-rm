# == Schema Information
#
# Table name: staff_resources
#
#  id            :bigint(8)        not null, primary key
#  slug          :string           not null
#  first_name    :string           not null
#  last_name     :string           not null
#  display_name  :string
#  email_address :string
#  bio_url       :string
#  grade_id      :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryBot.define do
  factory :staff_resource do
    first_name    { Faker::Name.first_name }
    last_name     { Faker::Name.last_name }
    email_address { Faker::Internet.email("#{first_name} #{last_name}") }
    grade
  end
end
