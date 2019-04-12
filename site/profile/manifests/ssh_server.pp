class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCmCbWqfJZTyMdqjdOJ3AunrEo7F2ofHgSWLEGkEfQlk2Lsu+6Mo/yUBXAumbV8zWx7BUUbkv79cgO455xzBLEKHLgvUXSO8kOrQg24eLk0uu8U4p/uRpuJ818Qkl1dFfLYkdydLneZ0XKLJe3CRXp0oL7+9UE4jQD532z3+Dz6Nm3NVTAJ703tUqbaEgrPSp69y21k90YZddOQtGBVtA33Dhsi3nyJisKfvpWDFC4Vm5ZlSqTuhpjvOVLOij3wAMXiUhOevKF0MsfL1k+DvXjbx8BEf78bjMuXqMJQ1Gvzv1iFERDR1yxe7jRzhGFDoseKMZrieXGSe5cVBFY7UxPb',
	}  
}
