namespace :sidekiq do
  %w(start stop restart).each do |command|
    desc "#{command.capitalize} Sidekiq"
    task command do
      on roles(:app) do
        execute :sudo, "systemctl #{command} sidekiq.service"
      end
    end
  end
end
