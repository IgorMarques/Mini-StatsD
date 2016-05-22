Gem::Specification.new do |s|
  s.name        = 'mini_statsd'

  s.summary     = "Mini StatsD"
  s.description = "A super simple StatsD receiver"
  s.version     = '0.2.0'
  s.date        = '2016-01-14'
  s.homepage    = 'https://github.com/IgorMarques/Mini-StatsD'
  s.license     = 'MIT'

  s.authors     = ["Igor Marques"]
  s.email       = 'igormarquessilva@gmail.com'

  s.executables << 'mini_statsd'
  s.files       = [
    "lib/mini_statsd.rb",
    "lib/port_sanitizer.rb",
    "lib/statsd_listener.rb"
  ]

  s.add_dependency "term-ansicolor", "1.3.2"
end
