# == Schema Information
#
# Table name: staff_resources
#
#  id            :bigint(8)        not null, primary key
#  slug          :string           not null
#  first_name    :string           not null
#  last_name     :string           not null
#  display_name  :string
#  email_address :string
#  bio_url       :string
#  grade_id      :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

RSpec.describe StaffResource, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :slug }
    it { is_expected.to have_attribute :first_name }
    it { is_expected.to have_attribute :last_name }
    it { is_expected.to have_attribute :display_name }
    it { is_expected.to have_attribute :email_address }
    it { is_expected.to have_attribute :bio_url }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :grade }
  end
end
