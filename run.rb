# frozen_string_literal: true

require 'json'
require 'tournament'

json = JSON.parse(File.read('input.json'))

program = Tournament.run(json)
