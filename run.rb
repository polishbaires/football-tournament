# frozen_string_literal: true

require 'json'

require './calc'
require './team'
require './tournament'

json = JSON.parse(File.read('input.json'))

program = TournamentGem.new(json).print_table
