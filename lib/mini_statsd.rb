require_relative 'statsd_listener'

class MiniStatsd
  def self.run(args = [])
    StatsdListener.run(args)
  end
end
