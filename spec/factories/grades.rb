# == Schema Information
#
# Table name: grades
#
#  id         :bigint(8)        not null, primary key
#  slug       :string(100)      not null
#  name       :string(100)      not null
#  level      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :grade do
    sequence(:name) { |n| "Role #{n}" }
    level { rand(1..5) }
  end
end
