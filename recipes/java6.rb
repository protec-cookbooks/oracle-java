include_recipe 'oracle-java::ppa'

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
