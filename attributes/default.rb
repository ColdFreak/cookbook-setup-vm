default['setup-vm']['rpm-base-packages'] = {"mlocate" => "locate", "jq" => "jq", "httpie" => "http","htop" => "htop", "etcd" => "etcdctl", "bzip2" => "bzip2", "s3cmd" => "s3cmd", "haproxy" => "haproxy"}

default['setup-vm']['rpm-dev-packages'] = %w{epel-release centos-release-scl libevent-devel make gcc-c++ curl-devel gcc openssl-devel expat-devel gettext asciidoc xmlto ncurses-devel java-1.8.0-openjdk-devel perl-ExtUtils-MakeMaker}

default['setup-vm']['tmux']['version'] = "2.2"
default['setup-vm']['tmux']['source_url'] = "https://github.com/tmux/tmux/releases/download/#{default['setup-vm']['tmux']['version']}/tmux-#{default['setup-vm']['tmux']['version']}.tar.gz"
default['setup-vm']['tmux']['configure_options'] = ["--prefix=/usr"]

default['setup-vm']['git']['version'] = "2.8.2"
default['setup-vm']['git']['source_url'] = "https://www.kernel.org/pub/software/scm/git/git-#{default['setup-vm']['git']['version']}.tar.gz"
default['setup-vm']['git']['configure_options'] = ["--prefix=/usr"]
