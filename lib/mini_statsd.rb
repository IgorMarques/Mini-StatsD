require_relative 'statsd_listener'

class MiniStatsd
  def self.run(args = [])
    StatsdListener.run(port: args.first)
  end
end
