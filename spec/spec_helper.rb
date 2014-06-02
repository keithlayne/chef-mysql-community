require 'chefspec'

def client_version_matches?(version)
  `mysql --version` =~ %r(Distrib #{Regex.quote version})
end

def server_version_matches?(version)
  `mysqld --version` =~ %r(Ver #{Regex.quote version})
end
