name 'mysql-community'
maintainer 'Keith Layne'
maintainer_email 'keith@laynes.org'
license 'All rights reserved'
description 'Installs/Configures MySQL using mysql.com repositories'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

supports 'centos'
supports 'debian'
supports 'fedora'
supports 'redhat'
supports 'ubuntu'

depends 'apt'
depends 'chef-sugar'
depends 'yum'
