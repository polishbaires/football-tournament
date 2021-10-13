require_relative './logging'
require 'tournament/calc'
require 'tournament/team'
include Logging
module Tournament
  class << self
    attr_accessor :teams
    def run(matches)
      @teams = []
      matches.each do |match|
        match.each_key do |key|
          preload_team key
        end
        points = Calc.new.get_points match
        add_points points
      end
      Logging.log("New #{self.class.name} (#{object_id}) ready")
      print_table
    end
    def preload_team (name)
      @teams.push(Tournament::Team.new(name)) unless @teams.any?{|x| x.name == name}
    end
    def add_points(points)
      points.each_key do |key|
        team = @teams.select{|x| x.name == key}.first
        team.score += points[key]
      end
    end
    def print_table
      puts ""
      puts "FINAL SCORES"
      format = '%-10s %s'
      puts format % %w[Team Score]
      @teams.sort_by {|x| x.score }.reverse.each do |team|
        puts format % [team.name, team.score]
      end
      puts ""
      Logging.log("Printed scores", Logger::DEBUG)
    end
  end
end
