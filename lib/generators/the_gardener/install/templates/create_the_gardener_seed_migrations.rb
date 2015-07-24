class CreateTheGardenerSeedMigrations < ActiveRecord::Migration
  def self.up
    create_table :seed_migrations do |t|
      t.string  :version
    end
  end

  def self.down
    drop_table :seed_migrations
  end
end