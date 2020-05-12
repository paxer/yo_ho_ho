RSpec.describe YoHoHo do
  it "has a version number" do
    expect(YoHoHo::VERSION).not_to be nil
  end

  context '#call' do
    it 'returns an array' do
      result = YoHoHo::Application.new.call(nil)
      expect(result).to eq([200, { "Content-Type" => "text/html" }, ["Hello from Yo Ho Ho"]])
    end
  end
end
