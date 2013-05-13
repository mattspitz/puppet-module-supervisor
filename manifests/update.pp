class supervisor::update {
  exec { 'supervisor::update':
    command     => '/usr/bin/env supervisorctl update',
    logoutput   => on_failure,
    refreshonly => true,
    require     => Service['supervisor']
  }
}
