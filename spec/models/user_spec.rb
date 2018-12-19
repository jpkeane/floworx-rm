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

RSpec.describe User, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :email_address }
    it { is_expected.to have_attribute :first_name }
    it { is_expected.to have_attribute :last_name }
  end

  describe 'methods' do
    it '#full_name should return the users full name' do
      user = FactoryBot.create(:user)
      expect(user.full_name).to eq "#{user.first_name} #{user.last_name}"
    end
  end

  it '#remember creates new token' do
    user = FactoryBot.create(:user)
    5.times do
      user.remember
    end
    expect(user.user_remember_tokens.count).to eq 5
  end

  it '#forget_remember_token removes a token' do
    user = FactoryBot.create(:user)
    user.remember
    expect(user.user_remember_tokens.count).to eq 1
    user.forget_remember_token(user.user_remember_tokens.first.remember_digest)
    expect(user.user_remember_tokens.count).to eq 0
  end

  it '#forget_all_remember_tokens removes all tokens' do
    user = FactoryBot.create(:user)
    5.times do
      user.remember
    end
    expect(user.user_remember_tokens.count).to eq 5
    user.forget_all_remember_tokens
    expect(user.user_remember_tokens.count).to eq 0
  end

  it '#create_password_reset_token creates password reset token' do
    user = FactoryBot.create(:user)
    user.create_password_reset_token
    expect(user.password_reset_token).not_to be_blank
    expect(user.password_reset_token_at).to be_within(2.seconds).of Time.zone.now
  end
end
