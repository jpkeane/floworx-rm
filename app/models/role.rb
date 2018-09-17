class Role < ApplicationRecord
  has_many :staff_resource_roles, dependent: :destroy
  has_many :engagements, dependent: :destroy

  validates :name, presence: true, length: { maximum: 100 }

  extend FriendlyId
  friendly_id :name, use: :slugged
end
