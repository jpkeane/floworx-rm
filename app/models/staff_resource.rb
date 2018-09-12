class StaffResource < ApplicationRecord
  belongs_to :grade, optional: true

  validates :first_name, presence: true, length: { maximum: 255 }
  validates :last_name, presence: true, length: { maximum: 255 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email_address, presence: true, length: { maximum: 255 },
                            format: { with: VALID_EMAIL_REGEX },
                            uniqueness: { case_sensitive: false }

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      full_name
    ]
  end

  def full_name
    return display_name if display_name
    "#{first_name} #{last_name}"
  end

  def self.active
    self.count
  end
end
