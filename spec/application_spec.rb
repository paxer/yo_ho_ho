RSpec.describe YoHoHo::Application do
  describe 'HTTP requests' do
    include Rack::Test::Methods

    class TestApp < YoHoHo::Application
    end

    def app
      TestApp.new
    end

    it 'handles GET /users/new' do
      expect do
        get '/users/new'
      end.to raise_error('cannot load such file -- users_controller')
    end
  end
end
