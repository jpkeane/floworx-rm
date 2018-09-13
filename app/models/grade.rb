class Grade < ApplicationRecord
  has_many :staff_resources, dependent: :nullify

  validates :name, presence: true, length: { maximum: 100 }
  validates :level, numericality: { minimum: 1 }

  extend FriendlyId
  friendly_id :name, use: :slugged
end