require './app/app'
require 'data_mapper'

namespace :db do

  desc "Non destructive upgrade"
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts "Auto-upgrade complete (no data loss)"
  end

  desc "Destructive upgrade"
  task :auto_migrate do
    DataMappe.auto_migrate!
    puts "Auto-migrate complete (data was lost)"
  end
end


# if ENV['RACK_ENV'] != 'production'
#   require 'rspec/core/rake_task'
#
#   RSpec::Core::RakeTask.new :spec
#
#   task default: [:spec]
# end
