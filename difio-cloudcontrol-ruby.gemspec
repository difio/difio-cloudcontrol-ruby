# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "difio-cloudcontrol-ruby/version"

Gem::Specification.new do |s|
  s.name        = "difio-cloudcontrol-ruby"
  s.version     = Difio::cloudControl::VERSION
  s.authors     = ["Alexander Todorov"]
  s.email       = ["atodorov@dif.io"]
  s.homepage    = "https://github.com/difio/difio-cloudcontrol-ruby"
  s.summary     = %q{Difio registration agent for cloudControl / Ruby applications}
  s.description = %q{Difio registration agent for cloudControl / Ruby applications. See the README for usage.}

  s.rubyforge_project = "difio-cloudcontrol-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "common-ruby-difio"
  s.add_runtime_dependency "json"
end
