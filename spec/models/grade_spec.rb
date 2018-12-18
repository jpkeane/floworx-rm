# == Schema Information
#
# Table name: grades
#
#  id         :bigint(8)        not null, primary key
#  slug       :string(100)      not null
#  name       :string(100)      not null
#  level      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

RSpec.describe Grade, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
    it { is_expected.to have_attribute :slug }
    it { is_expected.to have_attribute :level }
  end
end
