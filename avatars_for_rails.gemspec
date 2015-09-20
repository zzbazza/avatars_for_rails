# -*- encoding: utf-8 -*-
# stub: avatars_for_rails 1.1.5 ruby lib

Gem::Specification.new do |s|
  s.name = "avatars_for_rails"
  s.version = "1.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jaime Castro Montero", "GING"]
  s.date = "2015-09-20"
  s.description = "A Rails engine that allows any model to act as avatarable, permitting it to have a complete avatar manager"
  s.email = "social-stream@dit.upm.es"
  s.files = [".gitignore", "Gemfile", "MIT-LICENSE", "README.rdoc", "Rakefile", "app/assets/images/Jcrop.gif", "app/assets/images/cancel.png", "app/assets/images/pbar-ani.gif", "app/assets/javascripts/avatars_for_rails.js", "app/assets/stylesheets/avatars_for_rails.css", "app/controllers/avatars_controller.rb", "app/views/avatars/_crop.html.erb", "app/views/avatars/_current.html.erb", "app/views/avatars/_form.html.erb", "app/views/avatars/_progress.html.erb", "avatars_for_rails.gemspec", "config/locales/en.yml", "config/locales/es.yml", "config/routes.rb", "lib/avatars_for_rails.rb", "lib/avatars_for_rails/active_record.rb", "lib/avatars_for_rails/avatarable.rb", "lib/avatars_for_rails/engine.rb", "lib/avatars_for_rails/version.rb", "lib/generators/avatars_for_rails/install_generator.rb", "lib/generators/avatars_for_rails/templates/initializer.rb", "lib/generators/avatars_for_rails/templates/migration.rb", "spec/avatars_for_rails_spec.rb", "spec/dummy/Rakefile", "spec/dummy/app/controllers/application_controller.rb", "spec/dummy/app/helpers/application_helper.rb", "spec/dummy/app/models/actor.rb", "spec/dummy/app/views/layouts/application.html.erb", "spec/dummy/config.ru", "spec/dummy/config/application.rb", "spec/dummy/config/boot.rb", "spec/dummy/config/database.yml", "spec/dummy/config/environment.rb", "spec/dummy/config/environments/development.rb", "spec/dummy/config/environments/production.rb", "spec/dummy/config/environments/test.rb", "spec/dummy/config/initializers/backtrace_silencers.rb", "spec/dummy/config/initializers/inflections.rb", "spec/dummy/config/initializers/mime_types.rb", "spec/dummy/config/initializers/secret_token.rb", "spec/dummy/config/initializers/session_store.rb", "spec/dummy/config/locales/en.yml", "spec/dummy/config/routes.rb", "spec/dummy/db/migrate/20110411073237_create_actors.rb", "spec/dummy/db/migrate/20110411073238_create_avatars.rb", "spec/dummy/db/schema.rb", "spec/dummy/public/404.html", "spec/dummy/public/422.html", "spec/dummy/public/500.html", "spec/dummy/public/favicon.ico", "spec/dummy/public/images/Jcrop.gif", "spec/dummy/public/images/cancel.png", "spec/dummy/public/images/pbar-ani.gif", "spec/dummy/public/images/rails.png", "spec/dummy/public/javascripts/application.js", "spec/dummy/public/javascripts/avatars.js", "spec/dummy/public/javascripts/controls.js", "spec/dummy/public/javascripts/dragdrop.js", "spec/dummy/public/javascripts/effects.js", "spec/dummy/public/javascripts/jquery-ui.min.js", "spec/dummy/public/javascripts/jquery.Jcrop.min.js", "spec/dummy/public/javascripts/jquery.fileupload-ui.js", "spec/dummy/public/javascripts/jquery.fileupload.js", "spec/dummy/public/javascripts/jquery.form.js", "spec/dummy/public/javascripts/jquery.js", "spec/dummy/public/javascripts/prototype.js", "spec/dummy/public/javascripts/rails.js", "spec/dummy/public/stylesheets/.gitkeep", "spec/dummy/public/stylesheets/avatars.css", "spec/dummy/public/stylesheets/jquery.Jcrop.css", "spec/dummy/public/stylesheets/jquery.fileupload-ui.css", "spec/dummy/public/system/logos/1/actor/stream20110411-3539-1e9l1hn-0.jpg", "spec/dummy/public/system/logos/1/original/stream20110411-3539-1e9l1hn-0.jpg", "spec/dummy/public/system/logos/1/profile/stream20110411-3539-1e9l1hn-0.jpg", "spec/dummy/public/system/logos/1/representation/stream20110411-3539-1e9l1hn-0.jpg", "spec/dummy/public/system/logos/1/tie/stream20110411-3539-1e9l1hn-0.jpg", "spec/dummy/public/system/logos/2/actor/stream20110411-3539-1hlzauh-0.jpeg", "spec/dummy/public/system/logos/2/original/stream20110411-3539-1hlzauh-0.jpeg", "spec/dummy/public/system/logos/2/profile/stream20110411-3539-1hlzauh-0.jpeg", "spec/dummy/public/system/logos/2/representation/stream20110411-3539-1hlzauh-0.jpeg", "spec/dummy/public/system/logos/2/tie/stream20110411-3539-1hlzauh-0.jpeg", "spec/dummy/script/rails", "spec/integration/navigation_spec.rb", "spec/spec_helper.rb", "vendor/assets/javascripts/jquery.Jcrop.js", "vendor/assets/javascripts/jquery.fileupload-ui.js", "vendor/assets/javascripts/jquery.fileupload.js", "vendor/assets/javascripts/jquery.form.js", "vendor/assets/stylesheets/jquery.Jcrop.css", "vendor/assets/stylesheets/jquery.fileupload-ui.css"]
  s.homepage = "http://github.com/ging/avatars_for_rails"
  s.rubygems_version = "2.4.6"
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
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_development_dependency(%q<debugger>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 2.5.0"])
      s.add_development_dependency(%q<factory_girl>, ["~> 1.3.2"])
      s.add_development_dependency(%q<forgery>, ["~> 0.3.6"])
      s.add_development_dependency(%q<capybara>, ["~> 0.3.9"])
    else
      s.add_dependency(%q<jquery-rails>, [">= 3.0.0"])
      s.add_dependency(%q<jquery-ui-rails>, [">= 4.0.0"])
      s.add_dependency(%q<flashy>, ["~> 0.0.1"])
      s.add_dependency(%q<paperclip>, [">= 2.3.4"])
      s.add_dependency(%q<rmagick>, [">= 2.13.1"])
      s.add_dependency(%q<rails>, [">= 3.1.0"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_dependency(%q<debugger>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 2.5.0"])
      s.add_dependency(%q<factory_girl>, ["~> 1.3.2"])
      s.add_dependency(%q<forgery>, ["~> 0.3.6"])
      s.add_dependency(%q<capybara>, ["~> 0.3.9"])
    end
  else
    s.add_dependency(%q<jquery-rails>, [">= 3.0.0"])
    s.add_dependency(%q<jquery-ui-rails>, [">= 4.0.0"])
    s.add_dependency(%q<flashy>, ["~> 0.0.1"])
    s.add_dependency(%q<paperclip>, [">= 2.3.4"])
    s.add_dependency(%q<rmagick>, [">= 2.13.1"])
    s.add_dependency(%q<rails>, [">= 3.1.0"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    s.add_dependency(%q<debugger>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 2.5.0"])
    s.add_dependency(%q<factory_girl>, ["~> 1.3.2"])
    s.add_dependency(%q<forgery>, ["~> 0.3.6"])
    s.add_dependency(%q<capybara>, ["~> 0.3.9"])
  end
end
