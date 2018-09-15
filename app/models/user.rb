class User < ApplicationRecord
  has_many :user_remember_tokens, dependent: :destroy

  before_save { self.email_address = email_address.downcase }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  validates :first_name, presence: true, length: { maximum: 150 }
  validates :last_name, presence: true, length: { maximum: 150 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email_address, presence: true, length: { maximum: 255 },
                            format: { with: VALID_EMAIL_REGEX },
                            uniqueness: { case_sensitive: false }

  class << self
    # Returns a random token.
    def new_token
      SecureRandom.urlsafe_base64
    end
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
end
