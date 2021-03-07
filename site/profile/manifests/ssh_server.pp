class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC89lqWEjFvgziyYreV3SuRV0dMll7jZNZLKiPcBJAC+UNWqtJ/TfRnk5s8hjef0DK4iLE0X6ByuJmJ9vD9l+TElT95AAVM07HEbI8AK4cCMfJXO6Hi3DbXCxX4AxSIeivyLW9eABjEOQq/eewKqwuEqbwveWUd0TcQKfCQ2YxJRdtS3rbdMCt7i8G/RlcqKKWNIr7iHu0YH/+51UU66k5BuCI9EKpdQU1KqHWUKtYFb4JqBOsRUhAXU7VGAv4EQE2/UGkmi4KMmRPGQpJ5DRwzcUposU1bKDooR6vyyNk60p5gcqDGnTZjNc1NGs+IEaqM0+HV3h1ErhF5EHsskfdj',
  }
}
