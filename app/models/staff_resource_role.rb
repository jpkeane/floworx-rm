# == Schema Information
#
# Table name: staff_resource_roles
#
#  id                :bigint(8)        not null, primary key
#  staff_resource_id :bigint(8)
#  role_id           :bigint(8)
#  level             :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class StaffResourceRole < ApplicationRecord
  belongs_to :staff_resource
  belongs_to :role

  validates :staff_resource_id, uniqueness: { scope: :role_id }
  validates :level, presence: true, numericality: { greater_than: 0, less_than: 4 }
end
