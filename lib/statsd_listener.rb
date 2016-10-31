require 'socket'
require 'term/ansicolor'
require_relative 'port_sanitizer'

class StatsdListener
  include Term::ANSIColor

  def self.run(port: nil, host: nil)
    puts "Starting MiniStatsd...\n\n"

    new(host: host, port: port).run
  end

  def initialize(host: nil, port: nil)
    $stdout.sync = true

    @socket = UDPSocket.new
    @port = PortSanitizer.sanitize(port)
    @host = host

    @socket.bind(@host, @port)
  end

  def run
    puts "Listening on #{@host}:#{@port}"

    while @message = @socket.recvfrom(@port)
      extract_metric

      print_metric
    end
  end

  private

  def extract_metric
    return if @message.empty?

    @metric, @value = @message.first.split(':')
  end

  def print_metric
    puts "#{bold('Metric Received')}: #{blue(@metric)} | value: #{green(@value)}"
  end
end
