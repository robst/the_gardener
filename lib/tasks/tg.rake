namespace :tg do
  desc "load the seeds filed under db/seeds"
  task :seed => :environment do
    TheGardener::load_seeds!
  end
end
