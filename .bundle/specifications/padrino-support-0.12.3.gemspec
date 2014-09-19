# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "padrino-support"
  s.version = "0.12.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Padrino Team", "Nathan Esquenazi", "Davide D'Agostino", "Arthur Chiu", "Igor Bochkariov"]
  s.date = "2014-08-13"
  s.description = "A number of support methods and extensions for Padrino framework"
  s.email = "padrinorb@gmail.com"
  s.homepage = "http://www.padrinorb.com"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "padrino-support"
  s.rubygems_version = "2.0.3"
  s.summary = "Support for padrino"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.1"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.1"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.1"])
  end
end
