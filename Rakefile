desc 'setup API token'
task :environment do
  ENV['SLACK_API_TOKEN'] = 'xoxb-546610318466-548175781350-uxWq0duJpB22ibzzccRL48If'
end

namespace :deploy do
  desc 'start wodbot'
  task :run => :environment do
    require_relative 'tools/console'
  end

  task :saytoken => :environment do
    puts ENV['SLACK_API_TOKEN']
  end
end
