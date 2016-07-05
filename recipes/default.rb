#
# Cookbook Name:: setup-vm
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "setup-vm::base"
include_recipe "setup-vm::git"
include_recipe "setup-vm::tmux"
include_recipe "setup-vm::emacs"
