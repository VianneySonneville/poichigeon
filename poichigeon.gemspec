# frozen_string_literal: true

require_relative 'lib/poichigeon/version'

Gem::Specification.new do |spec|
  spec.name = 'poichigeon'
  spec.version = Poichigeon::VERSION
  spec.authors = ['vianney.sonneville']
  spec.email = ['vianney.sonneville@unova.fr']

  spec.summary = 'A famous poichigeon to fly any where'
  # spec.description = "TODO: Write a longer description or delete this line."
  spec.homepage = 'https://rubygems.org/gems/poichigeon'
  spec.required_ruby_version = '>= 3.3.5'

  spec.metadata = {
    'source_code_uri' => 'https://github.com/VianneySonneville/poichigeon',
    'changelog_uri' => 'https://github.com/VianneySonneville/poichigeon/blob/main/CHANGELOG.md'
  }

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = 'https://github.com/VianneySonneville/poichigeon/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  
  # gem use with spec/dummy like gem poichigon, path: ../../poichigeon
  # gemspec = File.basename(__FILE__)
  # spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
  #   ls.readlines("\x0", chomp: true).reject do |f|
  #     (f == gemspec) ||
  #       f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
  #   end
  # end

  # gem use with rails_project like gem poichigon, path: ../gem/poichigeon
  gemspec = File.basename(__FILE__, '.gemspec')
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == "#{gemspec}.gemspec") || # Exclure le gemspec lui-même
      f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile]) ||
      f.end_with?(".gem") # Exclure tout fichier .gem
    end
  end


  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # rails_version = '8.0.0.rc1'
  # spec.add_development_dependency 'activerecord', rails_version
  # spec.add_development_dependency 'rails', rails_version

  # spec.add_development_dependency 'puma'
  # spec.add_development_dependency 'sqlite3'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
