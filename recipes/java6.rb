include_recipe 'oracle-java::ppa'

execute "accept-oracle-license" do
  command "echo oracle-java6-installer shared/accepted-oracle-license-v1-1 select true"
  action :run
end

execute "deconf-set-selections" do
  command "/usr/bin/debconf-set-selections"
  action :run
end

package "oracle-java6-installer" do
  action :install
end

package "oracle-java6-set-default" do
  action :install
end

execute "update-java-alternatives-6" do
  command "update-java-alternatives -s java-6-oracle"
  action :run
end
