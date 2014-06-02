include_recipe 'chef-sugar::default'

if debian?
  distro = ubuntu? && node['lsb']['codename'] || 'stable'

  apt_repository 'mysql-community' do
    uri 'http://repo.mysql.com/apt'
    distribution distro
    components ['mysql-5.6']
    key 'mysql.key'
  end

end

if rhel? || fedora?

  distro = case
           when rhel? then 'el'
           when fedora? then 'fc'
           end

  cookbook_file '/etc/pki/rpm-gpg/RPM-GPG-KEY-mysql' do
    source 'RPM-GPG-KEY-mysql'
    owner 'root'
    group 'root'
    mode 00644
  end

  yum_repository 'mysql-community' do
    description "MySQL Community Server"
    baseurl "http://repo.mysql.com/yum/mysql-5.6-community/#{distro}/$releasever/$basearch"
    gpgkey 'file:/etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'
  end
end
