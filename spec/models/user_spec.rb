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
end
