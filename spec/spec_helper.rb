PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")
require File.join(File.dirname(__FILE__), 'blueprints')

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

def app
  LimeTree.tap { |app|  }
end
