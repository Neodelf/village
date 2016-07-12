# encoding: utf-8
# config valid only for Capistrano 3
lock '3.5.0'

# Project configuration options
# ------------------------------

set :application,    'village'
set :login,          'neodelf'
set :user,           'hosting_neodelf'

set :deploy_to,      "/home/#{fetch(:user)}/projects/#{fetch(:application)}"
set :unicorn_conf,   "/etc/unicorn/#{fetch(:application)}.#{fetch(:login)}.rb"
set :unicorn_config_path,   "/etc/unicorn/#{fetch(:application)}.#{fetch(:login)}.rb"

set :unicorn_pid,    "/var/run/unicorn/#{fetch(:user)}/" \
                     "#{fetch(:application)}.#{fetch(:login)}.pid"
set :bundle_without, %w{development test}.join(' ')             # this is default
set :use_sudo,       false

set :repo_url, 'git@github.com:Neodelf/village.git'

set :branch, ENV.fetch('branch', 'master')

set :scm, :git
set :format, :pretty
set :pty, true

# Change the verbosity level
set :log_level, :info

# Default value for :linked_files is []
set :linked_files, %w{config/database.yml config/secrets.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w(log tmp/cache tmp/pids vendor/bundle public/system public/uploads)

# Default value for keep_releases is 5
set :keep_releases, 5

# Configure RVM
set :rvm_ruby_version, '2.1.5'

# You unlikely have to change below this line
# -----------------------------------------------------------------------------

# Configure RVM
set :rake,            "rvm use #{fetch(:rvm_ruby_version)} do bundle exec rake"
set :bundle_cmd,      "rvm use #{fetch(:rvm_ruby_version)} do bundle"

set :assets_roles, [:web, :app]

set :unicorn_start_cmd,
    "(cd #{fetch(:deploy_to)}/current; rvm use #{fetch(:rvm_ruby_version)} " \
    "do bundle exec unicorn_rails -Dc #{fetch(:unicorn_conf)})"


after 'deploy:publishing', 'unicorn:restart_with_gem'

namespace :unicorn do
  desc 'Unicorn restart from gem'
  task :restart_with_gem do
    on roles(:app) do
      invoke 'unicorn:stop'
      invoke 'unicorn:start'
    end
  end
end
