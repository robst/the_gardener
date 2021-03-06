require 'rails/generators/base'

class SeedGenerator < Rails::Generators::NamedBase
  desc "Generates a seedfile filed under db/seeds with current timestamp and 
        your given name"
  def create_seed_file
    create_file filename
    puts "\tadd your data entries to your seedfile #{filename}"
  end

  def filename
    @filename ||= "db/seeds/#{DateTime.current.to_s(:number)}_#{file_name.to_s.underscore}.rb"
  end
end