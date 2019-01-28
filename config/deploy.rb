# frozen_string_literal: true

# config valid for current version and patch releases of Capistrano
lock '~> 3.11.0'

set :application, 'webfez'
set :repo_url, 'git@github.com:jrmyward/webfez.git'

set :migration_role, :app
set :keep_releases, 3

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default value for :pty is false
# set :pty, true

# set :rollbar_token, '773832fbe8b34414a713795381877a59'
# set :rollbar_env, Proc.new { fetch :stage }
# set :rollbar_role, Proc.new { :app }

# set :whenever_identifier, -> { "#{fetch(:application)}_#{fetch(:stage)}" }
# set :whenever_roles, -> { %i[db app] }
# set :whenever_environment, fetch(:stage)

# Default value for :linked_files is []
append :linked_files, 'config/master.key', 'config/puma.rb'

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'public/assets', 'public/system', 'tmp/pids', 'tmp/cache', 'tmp/sockets'

namespace :deploy do
  desc 'Restart application services'
  task :restart do
    on roles(:app) do
      invoke 'puma:restart'
    end
  end

  # after :finishing, :restart
end
