namespace :malachite do
  desc 'runs all Go tests in app/go'
  task :test do
    test_files = Dir["#{Rails.root.join('app', 'go')}/**/*.go"]
    system({ 'CGO_ENABLED' => '1' }, 'go', 'test', *test_files)
  end
end
