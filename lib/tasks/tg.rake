namespace :tg do
  desc "load the seeds filed under db/seeds"
  task :seed => :environment do
    seed_directory = File.join('db','seeds')
    Dir.open(seed_directory).sort.each do |seed_file|
      if File.file? File.join(seed_directory,seed_file)
        unless TheGardener::versioned? TheGardener::filename_version(seed_file)
          puts "loading seed: #{seed_file}"
          begin
            ActiveRecord::Base.transaction do
              load File.join(seed_directory,seed_file)
              TheGardener::versionize TheGardener::filename_version(seed_file)
            end
          rescue => e 
            puts "#{'-'*30}\nError on: #{File.join(seed_directory,seed_file)}"
            puts "message: #{e.message}\n#{'-'*30}"
            puts "seeding stopped" 
            raise ActiveRecord::Rollback
          end
        end
      end
    end
  end
end
