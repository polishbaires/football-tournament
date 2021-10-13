require 'logger'
module Logging
  def validate_level(level)
    unless level.between?(Logger::DEBUG, Logger::FATAL)
      raise ArgumentError, "invalid log level #{level}"
    end
  end
  def log(message, level=Logger::INFO)
    validate_level level
    Logger.new(STDOUT).add(level){ message }
  end
end
