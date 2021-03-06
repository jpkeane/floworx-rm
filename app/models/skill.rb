# == Schema Information
#
# Table name: skills
#
#  id         :bigint(8)        not null, primary key
#  slug       :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Skill < ApplicationRecord
  has_many :staff_resource_skills, dependent: :destroy
  has_many :staff_resources, through: :staff_resource_skills

  validates :name, presence: true, length: { maximum: 100 }

  extend FriendlyId
  friendly_id :name, use: :slugged
end
