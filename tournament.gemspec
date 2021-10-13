# frozen_string_literal: true

require File.expand_path('lib/tournament/version')

Gem::Specification.new do |spec|
  spec.name      = 'tournament'
  spec.version   = Tournament::VERSION
  spec.authors   = ['Luis Pulido']
  spec.email     = ['luis@luispulido.com']
  spec.summary   = 'A football tournament_gem example that
reads matches from a json file and outputs final scores
to console.'
  spec.license   = 'MIT'
  spec.platform  = Gem::Platform::RUBY

  spec.files = Dir[
    'README.md',
    'lib/tournament/calc.rb',
    'lib/tournament/team.rb',
    'lib/tournament/version.rb',
    'lib/logging.rb',
    'lib/tournament.rb',
    'tournament.gemspec',
    'Gemfile'
  ]

  spec.require_paths = ['lib']
end
