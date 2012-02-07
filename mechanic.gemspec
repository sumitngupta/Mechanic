Gem::Specification.new do |s|
  s.name = 'mechanic'
  s.version = '0.01'
  s.summary = 'a json fixture generation tool on top of machinist'
  s.description = 'a json fixture generation tool on top of machinist that integrates cleanly with Jasmine'
  s.homepage = 'http://github.com/sumitngupta/mechanic'
  s.email = 'sumitngupta@gmail.com'
  s.authors = ['Sumit Gupta']

  s.files             = %w( README.md Rakefile )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("config/**/*")
  s.files            += Dir.glob("bin/**/*")

  s.add_dependency "sinatra",         ">= 0.9.2"
  s.add_dependency "multi_json",      "~> 1.0"

  s.executables = ['mechanic_fixtures']
  s.default_executable = 'mechanic_fixtures'
end