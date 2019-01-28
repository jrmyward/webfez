namespace :nginx do
  %w(start stop restart).each do |command|
    desc "#{command.capitalize} Nginx"
    task command do
      on roles(:app) do
        execute :sudo, "systemctl #{command} nginx"
      end
    end
  end
end
