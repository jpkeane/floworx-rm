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

  describe 'validations' do
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
    it { is_expected.to validate_length_of(:first_name).is_at_most(150) }
    it { is_expected.to validate_length_of(:last_name).is_at_most(150) }

    it 'should check invalid email addresses are not valid' do
      invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                             foo@bar_baz.com foo@bar+baz.com]
      invalid_addresses.each do |invalid_address|
        sr = FactoryBot.build(:staff_resource, email_address: invalid_address)
        expect(sr).not_to be_valid
      end
    end

    it 'should check valid email addresses are valid' do
      valid_addresses = %w[user@example.com user@foo.org user.name@example.com
                           foo@bar-baz.com foo+bar@baz.com]
      valid_addresses.each do |valid_address|
        sr = FactoryBot.build(:staff_resource, email_address: valid_address)
        expect(sr).to be_valid
      end
    end
  end
end
