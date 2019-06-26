task :environment do
  ENV['SLACK_API_TOKEN'] = File.read('config/.token').chomp
end

desc 'start a console session in pry'
task :console => :environment do
  require_relative 'tools/console'
end

namespace :deploy do
  desc 'start wodbot'
  task :run => :environment do
    require_relative 'bin/run'
  end

  desc 'run wodbot on a local server'
  task :local => :environment do
    system("bundle exec puma")
  end

  desc 'puts the token to the console'
  task :saytoken => :environment do
    puts File.read 'config/.token'
  end
end
