class Skill < ApplicationRecord
  has_many :staff_resource_skills, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }

  extend FriendlyId
  friendly_id :name, use: :slugged
end
