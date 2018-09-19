class Engagement < ApplicationRecord
  belongs_to :project
  belongs_to :role

  delegate :client, to: :project

  validates :name, presence: true, length: { maximum: 100 }
  validates :code, presence: true, length: { maximum: 5 }, uniqueness: { case_sensitive: false }

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      full_code
    ]
  end

  def full_code
    project.full_code + '-' + code
  end

  def to_s
    name
  end
end
