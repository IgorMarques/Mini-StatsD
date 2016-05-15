require 'socket'
require 'term/ansicolor'
require_relative 'port_sanitizer'

class StatsdListener
  include Term::ANSIColor

  def self.run(args)
    puts "Starting MiniStatsd...\n\n"

    new(args).run
  end

  def initialize(args)
    $stdout.sync = true

    @socket = UDPSocket.new
    @port = PortSanitizer.get_port(args)
    
    @socket.bind(nil, @port)
  end

  def run
    puts "Listening on port #{@port}"

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
