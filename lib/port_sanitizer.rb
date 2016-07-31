require 'term/ansicolor'

class PortSanitizer
  DEFAULT_PORT = 8125

  def self.sanitize(port = DEFAULT_PORT)
    color = Term::ANSIColor

    port = port.to_i

    unless port.between?(1024, 49151)
      puts "#{color.yellow("Invalid or no port informed. Assigning default port (#{DEFAULT_PORT})")}.\n\n"

      return DEFAULT_PORT
    end

    port
  end
end
