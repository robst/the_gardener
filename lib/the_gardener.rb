require "the_gardener/version"

module TheGardener
  if defined?(Rails)
    class Railtie < Rails::Railtie
      railtie_name :the_gardener

      rake_tasks do
        load "tasks/tg.rake"
      end
    end
  end
  class SeedMigration < ActiveRecord::Base
  end

  def self.versioned? version
    SeedMigration.where('version=?', version).any?
  end

  def self.versionize version
    SeedMigration.create(version: version)
  end

  def self.filename_version filename
    filename.split('_').first
  end
end
