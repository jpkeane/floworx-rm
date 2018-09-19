class Project < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :code, presence: true, length: { maximum: 5 }, uniqueness: { case_sensitive: false }

  has_many :engagements, dependent: :destroy
  belongs_to :client

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      full_code
    ]
  end

  def self.active
    self.count
  end

  def full_code
    client.code + '-' + code
  end

  def uppercase_code
    code.upcase!
  end

  def to_s
    name
  end
end
