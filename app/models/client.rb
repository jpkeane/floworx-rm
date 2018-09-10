class Client < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :code, presence: true, length: { maximum: 5 }, uniqueness: { case_sensitive: false }

  has_many :projects, dependent: :nullify

  before_save :uppercase_code

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      code
    ]
  end

  def uppercase_code
    code.upcase!
  end
end
