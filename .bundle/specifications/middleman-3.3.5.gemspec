# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "middleman"
  s.version = "3.3.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Reynolds", "Ben Hollis", "Karl Freeman"]
  s.date = "2014-08-14"
  s.description = "A static site generator. Provides dozens of templating languages (Haml, Sass, Compass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle."
  s.email = ["me@tdreyno.com", "ben@benhollis.net", "karlfreeman@gmail.com"]
  s.homepage = "http://middlemanapp.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.0.3"
  s.summary = "Hand-crafted frontend development"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, ["= 3.3.5"])
      s.add_runtime_dependency(%q<middleman-sprockets>, [">= 3.1.2"])
      s.add_runtime_dependency(%q<haml>, [">= 4.0.5"])
      s.add_runtime_dependency(%q<sass>, ["< 4.0", ">= 3.2.17"])
      s.add_runtime_dependency(%q<compass-import-once>, ["= 1.0.5"])
      s.add_runtime_dependency(%q<compass>, [">= 0.12.4"])
      s.add_runtime_dependency(%q<uglifier>, ["~> 2.5"])
      s.add_runtime_dependency(%q<coffee-script>, ["~> 2.2"])
      s.add_runtime_dependency(%q<execjs>, ["~> 2.0"])
      s.add_runtime_dependency(%q<kramdown>, ["~> 1.2"])
    else
      s.add_dependency(%q<middleman-core>, ["= 3.3.5"])
      s.add_dependency(%q<middleman-sprockets>, [">= 3.1.2"])
      s.add_dependency(%q<haml>, [">= 4.0.5"])
      s.add_dependency(%q<sass>, ["< 4.0", ">= 3.2.17"])
      s.add_dependency(%q<compass-import-once>, ["= 1.0.5"])
      s.add_dependency(%q<compass>, [">= 0.12.4"])
      s.add_dependency(%q<uglifier>, ["~> 2.5"])
      s.add_dependency(%q<coffee-script>, ["~> 2.2"])
      s.add_dependency(%q<execjs>, ["~> 2.0"])
      s.add_dependency(%q<kramdown>, ["~> 1.2"])
    end
  else
    s.add_dependency(%q<middleman-core>, ["= 3.3.5"])
    s.add_dependency(%q<middleman-sprockets>, [">= 3.1.2"])
    s.add_dependency(%q<haml>, [">= 4.0.5"])
    s.add_dependency(%q<sass>, ["< 4.0", ">= 3.2.17"])
    s.add_dependency(%q<compass-import-once>, ["= 1.0.5"])
    s.add_dependency(%q<compass>, [">= 0.12.4"])
    s.add_dependency(%q<uglifier>, ["~> 2.5"])
    s.add_dependency(%q<coffee-script>, ["~> 2.2"])
    s.add_dependency(%q<execjs>, ["~> 2.0"])
    s.add_dependency(%q<kramdown>, ["~> 1.2"])
  end
end
