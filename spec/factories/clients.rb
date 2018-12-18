# == Schema Information
#
# Table name: clients
#
#  id         :bigint(8)        not null, primary key
#  slug       :string(5)        not null
#  name       :string(100)      not null
#  code       :string(5)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :client do
    sequence(:code) { |n| "C#{n}" }
    sequence(:name) { |n| "Client #{n}" }
  end
end
