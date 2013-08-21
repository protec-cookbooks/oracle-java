include_recipe 'oracle-java::ppa'

package "oracle-java7-installer" do
  action :install
end

package "oracle-java7-set-default" do
  action :install
end

execute "update-java-alternatives-7" do
  command "update-java-alternatives -s java-7-oracle"
  action :run
end
