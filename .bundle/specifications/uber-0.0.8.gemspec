# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "uber"
  s.version = "0.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Sutterer"]
  s.date = "2014-08-01"
  s.description = "A gem-authoring framework."
  s.email = ["apotonick@gmail.com"]
  s.homepage = "https://github.com/apotonick/uber"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Gem-authoring tools like class method inheritance in modules, dynamic options and more."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0.10.1"])
      s.add_development_dependency(%q<minitest>, [">= 5.0.0"])
    else
      s.add_dependency(%q<rake>, [">= 0.10.1"])
      s.add_dependency(%q<minitest>, [">= 5.0.0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0.10.1"])
    s.add_dependency(%q<minitest>, [">= 5.0.0"])
  end
end
