# == Schema Information
#
# Table name: users
#
#  id                      :bigint(8)        not null, primary key
#  email_address           :string
#  first_name              :string           not null
#  last_name               :string           not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  password_digest         :string
#  password_reset_token    :string
#  password_reset_token_at :datetime
#  slug                    :string           not null
#

class User < ApplicationRecord
  has_many :user_remember_tokens, dependent: :destroy

  before_save { self.email_address = email_address.downcase }

  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }, allow_nil: true

  validates :first_name, presence: true, length: { maximum: 150 }
  validates :last_name, presence: true, length: { maximum: 150 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
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

  class << self
    # Returns a random token.
    def new_token
      SecureRandom.urlsafe_base64
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def remember
    token = UserRememberToken.new(user: self, remember_digest: User.new_token)
    self.user_remember_tokens << token
    token.remember_digest
  end

  def remembered_by_token?(token)
    UserRememberToken.find_by(user: self.id, remember_digest: token)
  end

  # Forgets a user.
  def forget_remember_token(token)
    UserRememberToken.where(remember_digest: token, user: self).destroy_all
  end

  def forget_all_remember_tokens
    UserRememberToken.where(user: self).destroy_all
  end

  def create_password_reset_token
    # update_attributes(password_reset_token: SecureRandom.urlsafe_base64, password_reset_token_at: Time.zone.now)
    update(password_reset_token: SecureRandom.urlsafe_base64, password_reset_token_at: Time.zone.now)
  end

  def to_s
    full_name
  end
end
