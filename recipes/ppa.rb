apt_repository "oracle-java-6" do
  uri "http://ppa.launchpad.net/webupd8team/java/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "EEA14886"
  action :add
end

execute "accept-oracle-license" do
  command "echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true"
  action :run
end

execute "deconf-set-selections" do
  command "/usr/bin/debconf-set-selections"
  action :run
end
