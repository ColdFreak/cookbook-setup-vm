# coding: utf-8
file_name = node['setup-vm']['git']['source_url'].split('/').last

case node['platform_family']
when 'rhel'
  # bash resource自体は即実行しないけど、
  # 上のremote_fileリソースで判断して、tmuxのソースコードあれば, install_tmuxが実行される
  remote_file "#{Chef::Config['file_cache_path']}/#{file_name}" do
    source node['setup-vm']['git']['source_url']
    notifies :run, 'bash[install_git]', :immediately
    action :create_if_missing
  end
  bash 'install_git' do
    cwd "#{Chef::Config['file_cache_path']}"
    code <<-EOH
      yum remove git -y
      tar -zxf #{file_name}
      cd #{file_name.gsub(/\.tar\.gz/, '')}
      ./configure #{node['setup-vm']['git']['configure_options'].join(' ')}
      make
      make install
    EOH
    # tmux 2.xすでにインストールされていたた新しくtmuxはインストールしない
    not_if "git --version | grep 'version 2'"
  end
end
