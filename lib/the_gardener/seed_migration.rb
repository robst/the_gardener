module TheGardener
  class SeedMigration < ActiveRecord::Base
    scope :version, ->(version) { where('version=?', version) }

    def self.generate version
      create(version: version)
    end
  end
end
