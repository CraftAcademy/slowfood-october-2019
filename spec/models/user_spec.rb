RSpec.describe User, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
  end

  it { is_expected.to have_many :orders }

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:user)).to be_valid 
    end
  end
end
