# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "sublime_text_formatter"
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Eduard Litau"]
  s.email       = ["eduard.litau+sublime_text_formatter@gmail.com"]
  s.homepage    = "https://github.com/elitau/sublime_text_formatter"
  s.summary     = %q{SublimeText links RSpec formatter}
  s.description = %q{RSpec results formats file paths as links that can be opened by Sublime Text}
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('rspec', [">= 2.0"])
end
