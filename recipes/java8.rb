include_recipe 'oracle-java::ppa'

package "oracle-java8-installer" do
  action :install
end

package "oracle-java8-set-default" do
  action :install
end

execute "update-java-alternatives-8" do
  command "update-java-alternatives -s java-8-oracle"
  action :run
end
