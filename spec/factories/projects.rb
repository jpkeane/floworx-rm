# == Schema Information
#
# Table name: projects
#
#  id         :bigint(8)        not null, primary key
#  slug       :string(11)       not null
#  name       :string(100)      not null
#  code       :string(5)        not null
#  client_id  :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :project do
    sequence(:code) { |n| "P#{n}" }
    sequence(:name) { |n| "Project #{n}" }
    client
  end
end
