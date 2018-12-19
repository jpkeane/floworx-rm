# == Schema Information
#
# Table name: users
#
#  id                      :bigint(8)        not null, primary key
#  email_address           :string
#  first_name              :string           not null
#  last_name               :string           not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  password_digest         :string
#  password_reset_token    :string
#  password_reset_token_at :datetime
#  slug                    :string           not null
#

FactoryBot.define do
  factory :user do
    first_name    { Faker::Name.first_name }
    last_name     { Faker::Name.last_name }
    email_address { Faker::Internet.email("#{first_name} #{last_name}") }
    password      { Faker::Internet.password }
  end
end
