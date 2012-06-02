# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sendgrid"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stephen Blankenship"]
  s.date = "2011-09-08"
  s.description = "This gem allows simple integration between ActionMailer and SendGrid. \n                         SendGrid is an email deliverability API that is affordable and has lots of bells and whistles."
  s.email = "stephenrb@gmail.com"
  s.extra_rdoc_files = ["LICENSE", "README.md"]
  s.files = ["LICENSE", "README.md"]
  s.homepage = "http://github.com/stephenb/sendgrid"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "A gem that allows simple integration of ActionMailer with SendGrid (http://sendgrid.com)"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<json>, [">= 0"])
  end
end
