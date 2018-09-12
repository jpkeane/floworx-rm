class Role < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }

  extend FriendlyId
  friendly_id :name, use: :slugged
end
