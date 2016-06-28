case node['platform_family']
when 'rhel'
  execute "yum update" do
    command "yum update -y"
  end

  package "epel-release" do
    action :install
    not_if "rpm -qa | grep epel-release"
  end

  node['setup-vm']['rpm-base-packages'].each do |pkg, command|
    package "#{pkg}" do
      action :install
      not_if "which #{command}"
    end
  end

  node['setup-vm']['rpm-dev-packages'].each do |pkg|
    package "#{pkg}" do
      action :install
      not_if "rpm -qa | grep #{pkg}"
    end
  end
end
