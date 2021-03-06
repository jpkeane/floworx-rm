# == Schema Information
#
# Table name: engagements
#
#  id         :bigint(8)        not null, primary key
#  slug       :string           not null
#  code       :string           not null
#  name       :string           not null
#  project_id :bigint(8)
#  role_id    :bigint(8)
#  start_date :date
#  end_date   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Engagement, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
    it { is_expected.to have_attribute :slug }
    it { is_expected.to have_attribute :code }
    it { is_expected.to have_attribute :start_date }
    it { is_expected.to have_attribute :end_date }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :project }
    it { is_expected.to belong_to :role }
  end

  describe 'validations' do
    subject do
      FactoryBot.create(:engagement)
    end

    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :code }
    it { is_expected.to validate_length_of(:name).is_at_most(100) }
    it { is_expected.to validate_length_of(:code).is_at_most(5) }
  end

  describe 'methods' do
    it '#to_s should output correct string' do
      engagement = FactoryBot.create(:engagement, name: 'BBCCDD')
      expect(engagement.to_s).to eq('BBCCDD')
    end
  end
end
