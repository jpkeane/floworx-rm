# == Schema Information
#
# Table name: staff_resource_roles
#
#  id                :bigint(8)        not null, primary key
#  staff_resource_id :bigint(8)
#  role_id           :bigint(8)
#  level             :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

RSpec.describe StaffResourceRole, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :level }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :staff_resource }
    it { is_expected.to belong_to :role }
  end
end
