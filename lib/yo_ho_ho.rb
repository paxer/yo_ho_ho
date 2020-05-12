require "yo_ho_ho/version"
require 'yo_ho_ho/routing'
require 'yo_ho_ho/util'
require 'yo_ho_ho/dependencies'
require 'yo_ho_ho/controller'

module YoHoHo
  class Application
    def call(env)
      klass, action = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(action)
      [200, { 'Content-Type' => 'text/html' }, [text]]
    end
  end
end
