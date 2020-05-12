require "yo_ho_ho/version"
require 'yo_ho_ho/routing'
require 'yo_ho_ho/util'
require 'yo_ho_ho/dependencies'

module YoHoHo
  class Application
    def call(env)
      klass, action = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(action)
      [200, { 'Content-Type' => 'text/html' }, [text]]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    def env
      @env
    end
  end
end
