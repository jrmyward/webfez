namespace :puma do
  %w(start stop restart).each do |command|
    desc "#{command.capitalize} Puma"
    task command do
      on roles(:app) do
        execute :sudo, :systemctl, command.to_sym, 'puma.service'
      end
    end
  end
end

after 'deploy:cleanup', 'puma:restart'
