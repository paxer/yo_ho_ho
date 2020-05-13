RSpec.describe YoHoHo::Model::FileModel do
  context '.find' do
    it 'returns a hash transformed from a json file' do
      expect(File).to receive(:read).and_return('{ "id": 1, "name": "Darth Vader" }')
      result = described_class.find(1)
      expect(result['id']).to eq(1)
      expect(result['name']).to eq('Darth Vader')
    end
  end

  context '.all' do
    it 'returns an array of hashes transformed from a json files' do
      expect(Dir).to receive(:[]).and_return(['1.json'])
      expect(File).to receive(:read).and_return('{ "id": 1, "name": "Darth Vader" }')
      result = described_class.all
      expect(result.size).to eq(1)
      expect(result.first['id']).to eq(1)
      expect(result.first['name']).to eq('Darth Vader')
    end
  end
end
