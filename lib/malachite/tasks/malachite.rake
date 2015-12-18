namespace :malachite do
  desc 'run Go tests'
  task :test do
    system('go', 'test', Rails.root.join('app', 'go', '*.go').to_s)
  end
end
