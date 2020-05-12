RSpec.describe YoHoHo::Application do
  describe 'HTTP requests' do
    include Rack::Test::Methods

    class TestApp < YoHoHo::Application
    end

    def app
      TestApp.new
    end

    it 'handles GET /' do
      get '/'
      expect(last_response.ok?).to be_truthy
      body = last_response.body
      expect(body).to eq('Hello from Yo Ho Ho')
    end
  end
end
