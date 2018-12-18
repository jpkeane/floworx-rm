# == Schema Information
#
# Table name: roles
#
#  id         :bigint(8)        not null, primary key
#  slug       :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :role do
    sequence(:name) { |n| "Role #{n}" }
  end
end
