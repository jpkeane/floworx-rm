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

class Grade < ApplicationRecord
  has_many :staff_resources, dependent: :nullify

  validates :name, presence: true, length: { maximum: 100 }
  validates :level, numericality: { greater_than_or_equal_to: 1 }

  extend FriendlyId
  friendly_id :name, use: :slugged
end
