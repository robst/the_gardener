require "the_gardener/version"
require "the_gardener/seed_migration"

module TheGardener
  if defined?(Rails)
    class Railtie < Rails::Railtie
      railtie_name :the_gardener

      rake_tasks do
        load "tasks/tg.rake"
      end
    end
  end

  def self.versioned? version
    SeedMigration.version(version).any?
  end

  def self.versionize! version
    SeedMigration.generate(version)
  end

  def self.load_seeds!
    Dir.open(seed_directory).sort.each do |seed_file|
      next unless File.file? File.join(seed_directory,seed_file)
      next if versioned?(filename_version(seed_file))
      puts "loading seed: #{seed_file}"
      begin
        ActiveRecord::Base.transaction do
          load File.join(seed_directory,seed_file)
          versionize! filename_version(seed_file)
        end
      rescue => e 
        puts "#{'-'*30}\nError on: #{File.join(seed_directory,seed_file)}"
        puts "message: #{e.message}\n#{'-'*30}"
        puts "seeding stopped" 
        raise ActiveRecord::Rollback
      end

    end
  end

  def self.filename_version filename
    filename.split('_').first
  end

  private

  def self.seed_directory
    File.join('db','seeds')
  end

end
