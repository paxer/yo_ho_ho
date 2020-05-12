RSpec.describe YoHoHo do
  context '.to_underscore' do
    it 'transforms CamelCase string to under_score' do
      result = described_class.to_underscore('UsersController')
      expect(result).to eq('users_controller')
    end

    it 'transforms NameSpace::CamelCase string to namespace/under_score' do
      result = described_class.to_underscore('Accounts::UsersController')
      expect(result).to eq('accounts/users_controller')
    end
  end
end
