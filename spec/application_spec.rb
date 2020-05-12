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
      end.to raise_error('uninitialized constant UsersController')
    end

    it 'handles GET /accounts/create' do
      expect do
        get '/accounts/create'
      end.to raise_error('uninitialized constant AccountsController')
    end
  end
end
