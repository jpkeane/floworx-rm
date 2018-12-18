# == Schema Information
#
# Table name: projects
#
#  id         :bigint(8)        not null, primary key
#  slug       :string(11)       not null
#  name       :string(100)      not null
#  code       :string(5)        not null
#  client_id  :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

RSpec.describe Project, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
    it { is_expected.to have_attribute :slug }
    it { is_expected.to have_attribute :code }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :client }
  end

  describe 'validations' do
    subject do
      FactoryBot.create(:project)
    end

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:code) }
    it { is_expected.to validate_length_of(:name).is_at_most(100) }
    it { is_expected.to validate_length_of(:code).is_at_most(5) }
  end
end
