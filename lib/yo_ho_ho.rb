require "yo_ho_ho/version"
require 'yo_ho_ho/routing'
require 'yo_ho_ho/util'
require 'yo_ho_ho/dependencies'
require 'yo_ho_ho/controller'
require 'yo_ho_ho/file_model'

module YoHoHo
  class Application
    def call(env)
      klass, action = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(action)
      response = controller.get_response
      if response
        [response.status, response.headers, [response.body].flatten]
      else
        [200, { 'Content-Type' => 'text/html' }, [text]]
      end
    end
  end
end
