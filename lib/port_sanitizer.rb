require 'term/ansicolor'

class PortSanitizer
  DEFAULT_PORT = 8125

  def self.sanitize(port = DEFAULT_PORT)
    color = Term::ANSIColor

    port = port.to_i

    if port < 1024 || port > 49151
      puts "#{color.yellow('Invalid or no port informed. Assigning default port (8125)')}.\n\n"

      return DEFAULT_PORT
    end

    port
  end
end
