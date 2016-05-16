# Mini-StatsD
A simple StatsD listener

[![Code Climate](https://codeclimate.com/github/IgorMarques/Mini-StatsD/badges/gpa.svg)](https://codeclimate.com/github/IgorMarques/Mini-StatsD)

<a href="http://imgur.com/pwCTtd4"><img src="http://i.imgur.com/pwCTtd4.gif" title="source: imgur.com" width='300'/></a>

Mini-StatsD is just a simple UDP server that listens to (and prints) StatsD-like messages sent to some port on your system.

## Running

```shell
$ gem install mini_statsd
$ bundle install
$ mini_statsd
```

Simple as that :)

If you want to set a specific port, just run:

```shell
$ mini_statsd <port>
```

Like:

```shell
$ mini_statsd 9125
```

A simple example of a code that sends the statsd message from the gif can be found [here](https://gist.github.com/IgorMarques/079b08c3bbb13e8d896151a192262e8b)
