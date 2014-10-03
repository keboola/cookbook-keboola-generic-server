

directory "/www/demo" do
	owner "deploy"
	group "apache"
end

cookbook_file "/www/demo/index.html" do
  source "index.html"
  mode "0600"
  owner "root"
  group "root"
end

web_app "#{node['fqdn']}" do
  server_name node['fqdn']
  server_aliases [node['hostname']]
  docroot "/www/demo"
  cookbook 'apache2'
  enable true
end