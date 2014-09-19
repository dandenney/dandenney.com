# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "middleman-sprockets"
  s.version = "3.3.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Reynolds", "Ben Hollis", "Karl Freeman"]
  s.date = "2014-08-25"
  s.description = "Sprockets support for Middleman"
  s.email = ["me@tdreyno.com", "ben@benhollis.net", "karlfreeman@gmail.com"]
  s.homepage = "https://github.com/middleman/middleman-sprockets"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Sprockets support for Middleman"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, ["~> 3.3"])
      s.add_runtime_dependency(%q<sprockets>, ["~> 2.12.1"])
      s.add_runtime_dependency(%q<sprockets-sass>, ["~> 1.2.0"])
      s.add_runtime_dependency(%q<sprockets-helpers>, ["~> 1.1.0"])
    else
      s.add_dependency(%q<middleman-core>, ["~> 3.3"])
      s.add_dependency(%q<sprockets>, ["~> 2.12.1"])
      s.add_dependency(%q<sprockets-sass>, ["~> 1.2.0"])
      s.add_dependency(%q<sprockets-helpers>, ["~> 1.1.0"])
    end
  else
    s.add_dependency(%q<middleman-core>, ["~> 3.3"])
    s.add_dependency(%q<sprockets>, ["~> 2.12.1"])
    s.add_dependency(%q<sprockets-sass>, ["~> 1.2.0"])
    s.add_dependency(%q<sprockets-helpers>, ["~> 1.1.0"])
  end
end
