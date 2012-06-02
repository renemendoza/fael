# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rolify"
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Florent Monbillard"]
  s.date = "2012-04-07"
  s.description = "Very simple Roles library without any authorization enforcement supporting scope on resource objects (instance or class)"
  s.email = ["f.monbillard@gmail.com"]
  s.homepage = "https://github.com/EppO/rolify"
  s.require_paths = ["lib"]
  s.rubyforge_project = "rolify"
  s.rubygems_version = "1.8.10"
  s.summary = "Roles library with resource scoping"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<activerecord>, [">= 3.1.0"])
      s.add_development_dependency(%q<mongoid>, [">= 2.3"])
      s.add_development_dependency(%q<bson_ext>, [">= 0"])
      s.add_development_dependency(%q<ammeter>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
    else
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<activerecord>, [">= 3.1.0"])
      s.add_dependency(%q<mongoid>, [">= 2.3"])
      s.add_dependency(%q<bson_ext>, [">= 0"])
      s.add_dependency(%q<ammeter>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
    end
  else
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<activerecord>, [">= 3.1.0"])
    s.add_dependency(%q<mongoid>, [">= 2.3"])
    s.add_dependency(%q<bson_ext>, [">= 0"])
    s.add_dependency(%q<ammeter>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
  end
end
