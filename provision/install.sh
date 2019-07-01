#!/usr/bin/env bash

#
# Shell provisioner to install Puppet
# Based on: https://github.com/hashicorp/puppet-bootstrap
#

REPO_URL="http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm"

set -e

if [ "$EUID" -ne "0" ]; then
	echo "This script must be run as root." >&2
	exit 1
fi

# If Puppet is already installed exit silently.
if which puppet > /dev/null 2>&1; then
	exit 0
fi

# Install Puppet Repository
rpm -ivh "${REPO_URL}" > /dev/null 2>&1

# Install Puppet
yes | yum -y install puppet > /dev/null 2>&1

echo "Puppet Installed Successfully!"
exit 0
