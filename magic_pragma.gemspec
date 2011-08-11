# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{magic_pragma}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["P.S.V.R"]
  s.date = %q{2011-08-11}
  s.default_executable = %q{magic_pragma}
  s.email = ["pmq2001@gmail.com"]
  s.executables = ["magic_pragma"]
  s.files = Dir.glob("{bin,lib}/**/*") + %w(README.rdoc CHANGELOG LICENCE)
  s.homepage = %q{http://github.com/pmq20/magic_pragma}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Easily add "#pragma once" to multiple ".h" and ".hpp" header files}
  
end
