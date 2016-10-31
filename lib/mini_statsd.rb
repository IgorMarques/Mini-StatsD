require_relative 'statsd_listener'

class MiniStatsd
  def self.run(args = [])
    StatsdListener.run(port: args[0], host: args[1])
  end
end
