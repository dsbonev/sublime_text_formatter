# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "sublime_text_formatter"
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Eduard Litau"]
  s.email       = ["eduard.litau@gmail.com"]
  s.homepage    = "https://github.com/elitau/sublime_text_formatter"
  s.summary     = %q{the SublimeText links RSpec formatter}
  s.description = %q{the SublimeText links RSpec formatter}

  s.rubyforge_project = "sublime_text_formatter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('rspec', ["~> 2.0"])
end
