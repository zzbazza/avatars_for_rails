# -*- encoding: utf-8 -*-
# stub: avatars_for_rails 1.1.5 ruby lib

Gem::Specification.new do |s|
  s.name = "avatars_for_rails"
  s.version = "2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jaime Castro Montero", "GING", 'zzbazza']
  s.date = "2015-09-20"
  s.description = "A Rails engine that allows any model to act as avatarable, permitting it to have a complete avatar manager"
  s.email = "social-stream@dit.upm.es"
  s.files = Dir["app/**/*", "config/**/*", "lib/**/*", "vendor/**/*", "MIT-LICENSE", "README.rdoc", "Rakefile", "avatars_for_rails.gemspec"]
  s.require_paths = ["lib"]
  s.homepage = "http://github.com/zzbazza/avatars_for_rails"
  s.rubygems_version = "2.4.7"
  s.summary = "Avatar manager for rails apps"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jquery-rails>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<jquery-ui-rails>, [">= 4.0.0"])
      s.add_runtime_dependency(%q<flashy>, ["~> 0.0.1"])
      s.add_runtime_dependency(%q<paperclip>, [">= 2.3.4"])
      s.add_runtime_dependency(%q<rmagick>, [">= 2.13.1"])
      s.add_development_dependency(%q<rails>, [">= 3.1.0"])
    else
      s.add_dependency(%q<jquery-rails>, [">= 3.0.0"])
      s.add_dependency(%q<jquery-ui-rails>, [">= 4.0.0"])
      s.add_dependency(%q<flashy>, ["~> 0.0.1"])
      s.add_dependency(%q<paperclip>, [">= 2.3.4"])
      s.add_dependency(%q<rmagick>, [">= 2.13.1"])
      s.add_dependency(%q<rails>, [">= 3.1.0"])
    end
  else
    s.add_dependency(%q<jquery-rails>, [">= 3.0.0"])
    s.add_dependency(%q<jquery-ui-rails>, [">= 4.0.0"])
    s.add_dependency(%q<flashy>, ["~> 0.0.1"])
    s.add_dependency(%q<paperclip>, [">= 2.3.4"])
    s.add_dependency(%q<rmagick>, [">= 2.13.1"])
    s.add_dependency(%q<rails>, [">= 3.1.0"])
  end
end
