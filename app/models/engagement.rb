class Engagement < ApplicationRecord
  belongs_to :project
  belongs_to :role

  validates :name, presence: true, length: { maximum: 100 }
  validates :code, presence: true, length: { maximum: 5 }, uniqueness: { case_sensitive: false }
end
