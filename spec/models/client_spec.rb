# == Schema Information
#
# Table name: clients
#
#  id         :bigint(8)        not null, primary key
#  slug       :string(5)        not null
#  name       :string(100)      not null
#  code       :string(5)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Client, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
    it { is_expected.to have_attribute :slug }
    it { is_expected.to have_attribute :code }
  end

  describe 'relationships' do
    it { is_expected.to have_many :projects }
    it { is_expected.to have_many :engagements }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :code }

    it { is_expected.to validate_length_of(:name).is_at_most(100) }
    it { is_expected.to validate_length_of(:code).is_at_most(5) }
  end

  describe 'methods' do
    it '#active should return the correct count' do
      pre_count = Client.active
      3.times do
        FactoryBot.create(:client)
      end
      expect(Client.active).to eq(pre_count + 3)
    end
  end

  it '#code_and_name_display should show the correct format' do
    client = FactoryBot.create(:client, code: 'AAAAA', name: 'BBCCDD')
    expect(client.code_and_name_display).to eq('AAAAA - BBCCDD')
  end

  it '#to_s should output correct string' do
    client = FactoryBot.create(:client, name: 'BBCCDD')
    expect(client.to_s).to eq('BBCCDD')
  end
end
