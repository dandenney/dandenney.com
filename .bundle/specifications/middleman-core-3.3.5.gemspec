# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "middleman-core"
  s.version = "3.3.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Reynolds", "Ben Hollis", "Karl Freeman"]
  s.date = "2014-08-14"
  s.description = "A static site generator. Provides dozens of templating languages (Haml, Sass, Compass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle."
  s.email = ["me@tdreyno.com", "ben@benhollis.net", "karlfreeman@gmail.com"]
  s.executables = ["middleman"]
  s.files = ["bin/middleman"]
  s.homepage = "http://middlemanapp.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.0.3"
  s.summary = "Hand-crafted frontend development"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bundler>, ["~> 1.1"])
      s.add_runtime_dependency(%q<rack>, ["< 2.0", ">= 1.4.5"])
      s.add_runtime_dependency(%q<tilt>, ["< 2.0", "~> 1.4.1"])
      s.add_runtime_dependency(%q<erubis>, [">= 0"])
      s.add_runtime_dependency(%q<hooks>, ["~> 0.3"])
      s.add_runtime_dependency(%q<rack-test>, ["~> 0.6.2"])
      s.add_runtime_dependency(%q<thor>, ["< 2.0", ">= 0.15.2"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 4.1.0"])
      s.add_runtime_dependency(%q<padrino-helpers>, ["~> 0.12.3"])
      s.add_runtime_dependency(%q<listen>, ["< 3.0", ">= 2.7.9"])
      s.add_runtime_dependency(%q<i18n>, ["~> 0.6.9"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.1"])
      s.add_dependency(%q<rack>, ["< 2.0", ">= 1.4.5"])
      s.add_dependency(%q<tilt>, ["< 2.0", "~> 1.4.1"])
      s.add_dependency(%q<erubis>, [">= 0"])
      s.add_dependency(%q<hooks>, ["~> 0.3"])
      s.add_dependency(%q<rack-test>, ["~> 0.6.2"])
      s.add_dependency(%q<thor>, ["< 2.0", ">= 0.15.2"])
      s.add_dependency(%q<activesupport>, ["~> 4.1.0"])
      s.add_dependency(%q<padrino-helpers>, ["~> 0.12.3"])
      s.add_dependency(%q<listen>, ["< 3.0", ">= 2.7.9"])
      s.add_dependency(%q<i18n>, ["~> 0.6.9"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.1"])
    s.add_dependency(%q<rack>, ["< 2.0", ">= 1.4.5"])
    s.add_dependency(%q<tilt>, ["< 2.0", "~> 1.4.1"])
    s.add_dependency(%q<erubis>, [">= 0"])
    s.add_dependency(%q<hooks>, ["~> 0.3"])
    s.add_dependency(%q<rack-test>, ["~> 0.6.2"])
    s.add_dependency(%q<thor>, ["< 2.0", ">= 0.15.2"])
    s.add_dependency(%q<activesupport>, ["~> 4.1.0"])
    s.add_dependency(%q<padrino-helpers>, ["~> 0.12.3"])
    s.add_dependency(%q<listen>, ["< 3.0", ">= 2.7.9"])
    s.add_dependency(%q<i18n>, ["~> 0.6.9"])
  end
end
