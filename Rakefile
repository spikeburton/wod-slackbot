desc 'setup API token'
task :environment do
  ENV['SLACK_API_TOKEN'] = File.read('config/.token').chomp
end

namespace :deploy do
  desc 'start wodbot'
  task :run => :environment do
    require_relative 'tools/console'
  end

  desc 'puts the token to the console'
  task :saytoken => :environment do
    puts File.read './config/.token'
  end
end
