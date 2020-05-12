require "yo_ho_ho/version"

module YoHoHo
  class Application
    def call(env)
      [200, { 'Content-Type' => 'text/html' }, ['Hello from Yo Ho Ho']]
    end
  end
end
