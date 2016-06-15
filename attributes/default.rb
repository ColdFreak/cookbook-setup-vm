default['setup-vm']['centos-base-packages'] = {"mlocate" => "locate", "jq" => "jq", "httpie" => "http","htop" => "htop", "etcd" => "etcdctl"}
default['setup-vm']['centos-dev-packages'] = %w{libevent-devel make gcc-c++ curl-devel gcc openssl-devel expat-devel gettext asciidoc xmlto ncurses-devel java-1.8.0-openjdk-devel perl-ExtUtils-MakeMaker}


default['setup-vm']['tmux']['version'] = "2.2"
default['setup-vm']['tmux']['source_url'] = "https://github.com/tmux/tmux/releases/download/#{default['setup-vm']['tmux']['version']}/tmux-#{default['setup-vm']['tmux']['version']}.tar.gz"
default['setup-vm']['tmux']['configure_options'] = ["--prefix=/usr"]
