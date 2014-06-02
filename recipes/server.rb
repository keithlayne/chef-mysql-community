include_recipe 'mysql-community::_add_repo'

# seems to be a missing dependency in the deb files
package 'perl' if debian?

package 'mysql-community-server'
