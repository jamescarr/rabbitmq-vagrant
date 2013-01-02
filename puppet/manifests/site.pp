node default {
  class { 'rabbitmq::repo::apt':
    pin    => 900,
    before => Class['rabbitmq::server']
  }
  class { 'rabbitmq::server':
    version => '2.7.1',
    port    => '5672',
  }
}
