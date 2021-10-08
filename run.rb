require 'json'

# require './lib/logging'

require './calc'
require './team'
require './program'

json = JSON.parse(File.read('input.json'))

program = Program.new(json).print_table
