# == Schema Information
#
# Table name: clients
#
#  id         :bigint(8)        not null, primary key
#  slug       :string(5)        not null
#  name       :string(100)      not null
#  code       :string(5)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Client < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :code, presence: true, length: { maximum: 5 }, uniqueness: { case_sensitive: false }

  has_many :projects, dependent: :nullify
  has_many :engagements, through: :projects

  before_save :uppercase_code

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      code
    ]
  end

  def self.active
    self.count
  end

  def uppercase_code
    code.upcase!
  end

  def code_and_name_display
    "#{code} - #{name}"
  end

  def to_s
    name
  end
end
