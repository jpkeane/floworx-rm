class StaffResourceSkill < ApplicationRecord
  belongs_to :staff_resource
  belongs_to :skill

  validates :staff_resource_id, uniqueness: { scope: :skill_id }
  validates :level, presence: true, numericality: { greater_than: 0, less_than: 4 }
end