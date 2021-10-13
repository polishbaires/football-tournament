# frozen_string_literal: true

require File.expand_path('lib/tournament_gem/version')

Gem::Specification.new do |spec|
  spec.name      = 'tournament_gem'
  spec.version   = TournamentGem::VERSION
  spec.authors   = ['Luis Pulido']
  spec.email     = ['luis@luispulido.com']
  spec.summary   = 'A football tournament_gem example that
reads matches from a json file and outputs final scores
to console.'
  spec.license   = 'MIT'
  spec.platform  = Gem::Platform::RUBY

  spec.files = Dir[
    'README',
    'LICENSE',
    'calc.rb',
    'team.rb',
    'lib/tournament_gem/version.rb',
    'lib/logging.rb',
    'tournament_gem.rb',
    'tournament_gem.gemspec',
    'Gemfile'
  ]

  spec.require_paths = ['lib']
end
