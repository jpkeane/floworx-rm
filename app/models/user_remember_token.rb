# == Schema Information
#
# Table name: user_remember_tokens
#
#  id              :bigint(8)        not null, primary key
#  user_id         :bigint(8)
#  remember_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class UserRememberToken < ApplicationRecord
  belongs_to :user

  validates :remember_digest, presence: true
end
