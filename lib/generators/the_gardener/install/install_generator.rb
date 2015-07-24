require 'rails/generators/migration'

module TheGardener
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)
      desc "add the_gardener migrations to your db/migrate directory"
      
      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end

      def copy_migrations
        migration_template "create_the_gardener_seed_migrations.rb", "db/migrate/create_the_gardener_seed_migrations.rb"
        puts "done.\nnow you have to run the db:migrate task to update your database"
      end

    end
  end
end