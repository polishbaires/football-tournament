require 'json'

require './calc'
require './team'
require './program'

json = JSON.parse(File.read('input.json'))

program = Program.new(json).print_table
