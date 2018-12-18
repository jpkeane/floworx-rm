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

RSpec.describe UserRememberToken, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :remember_digest }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :user }
  end
end
