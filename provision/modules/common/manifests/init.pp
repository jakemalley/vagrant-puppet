class common()
{
	file
	{
		"/etc/motd":
		ensure  => "file",
		owner   => "root",
		group   => "root",
		mode    => "0644",
		content => "A ${operatingsystem} ${operatingsystemrelease} System Provisioned by Puppet\n"
	}
}
