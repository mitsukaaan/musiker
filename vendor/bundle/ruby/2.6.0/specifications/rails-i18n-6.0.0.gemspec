# -*- encoding: utf-8 -*-
# stub: rails-i18n 6.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-i18n".freeze
  s.version = "6.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.11".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rails I18n Group".freeze]
  s.date = "2019-08-17"
  s.description = "A set of common locale data and translations to internationalize and/or localize your Rails applications.".freeze
  s.email = "rails-i18n@googlegroups.com".freeze
  s.homepage = "http://github.com/svenfuchs/rails-i18n".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.8".freeze
  s.summary = "Common locale data and translations for Rails i18n.".freeze

  s.installed_by_version = "3.0.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<i18n>.freeze, [">= 0.7", "< 2"])
      s.add_runtime_dependency(%q<railties>.freeze, [">= 6.0.0", "< 7"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.7"])
      s.add_development_dependency(%q<i18n-spec>.freeze, ["~> 0.6.0"])
      s.add_development_dependency(%q<i18n-tasks>.freeze, ["~> 0.9.20"])
    else
      s.add_dependency(%q<i18n>.freeze, [">= 0.7", "< 2"])
      s.add_dependency(%q<railties>.freeze, [">= 6.0.0", "< 7"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.7"])
      s.add_dependency(%q<i18n-spec>.freeze, ["~> 0.6.0"])
      s.add_dependency(%q<i18n-tasks>.freeze, ["~> 0.9.20"])
    end
  else
    s.add_dependency(%q<i18n>.freeze, [">= 0.7", "< 2"])
    s.add_dependency(%q<railties>.freeze, [">= 6.0.0", "< 7"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.7"])
    s.add_dependency(%q<i18n-spec>.freeze, ["~> 0.6.0"])
    s.add_dependency(%q<i18n-tasks>.freeze, ["~> 0.9.20"])
  end
end
