# == Schema Information
#
# Table name: roles
#
#  id         :bigint(8)        not null, primary key
#  slug       :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

RSpec.describe Role, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
    it { is_expected.to have_attribute :slug }
  end
end
