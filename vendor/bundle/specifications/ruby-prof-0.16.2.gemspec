# -*- encoding: utf-8 -*-
# stub: ruby-prof 0.16.2 ruby lib
# stub: ext/ruby_prof/extconf.rb

Gem::Specification.new do |s|
  s.name = "ruby-prof"
  s.version = "0.16.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Shugo Maeda, Charlie Savage, Roger Pack, Stefan Kaes"]
  s.date = "2016-08-25"
  s.description = "ruby-prof is a fast code profiler for Ruby. It is a C extension and\ntherefore is many times faster than the standard Ruby profiler. It\nsupports both flat and graph profiles.  For each method, graph profiles\nshow how long the method ran, which methods called it and which\nmethods it called. RubyProf generate both text and html and can output\nit to standard out or to a file.\n"
  s.email = "shugo@ruby-lang.org, cfis@savagexi.com, rogerdpack@gmail.com, skaes@railsexpress.de"
  s.executables = ["ruby-prof", "ruby-prof-check-trace"]
  s.extensions = ["ext/ruby_prof/extconf.rb"]
  s.files = ["bin/ruby-prof", "bin/ruby-prof-check-trace", "ext/ruby_prof/extconf.rb"]
  s.homepage = "https://github.com/ruby-prof/ruby-prof"
  s.licenses = ["BSD-2-Clause"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.4.5.1"
  s.summary = "Fast Ruby profiler"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, ["~> 5.8.3"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
    else
      s.add_dependency(%q<minitest>, ["~> 5.8.3"])
      s.add_dependency(%q<rake-compiler>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 5.8.3"])
    s.add_dependency(%q<rake-compiler>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
  end
end
