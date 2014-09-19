# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "hooks"
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Sutterer"]
  s.date = "2014-03-11"
  s.description = "Declaratively define hooks, add callbacks and run them with the options you like."
  s.email = ["apotonick@gmail.com"]
  s.homepage = "http://nicksda.apotomo.de/2010/09/hooks-and-callbacks-for-ruby-but-simple/"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Generic hooks with callbacks for Ruby."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<uber>, ["~> 0.0.4"])
      s.add_development_dependency(%q<minitest>, [">= 5.0.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<uber>, ["~> 0.0.4"])
      s.add_dependency(%q<minitest>, [">= 5.0.0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<uber>, ["~> 0.0.4"])
    s.add_dependency(%q<minitest>, [">= 5.0.0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
