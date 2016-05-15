require 'term/ansicolor'

class PortSanitizer
  def self.get_port(args)
    color = Term::ANSIColor

    port = args.first.to_i

    if port < 1024
      puts "#{color.yellow('Invalid or no port informed. Assigning default port (8125)')}.\n\n"

      port = 8125
    end

    port
  end
end
