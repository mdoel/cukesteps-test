namespace :db do
  desc "Load standard resort brand data"
  task :loadbrands => :environment do
    
    Brand.destroy_all

    Brand.create! :name => 'McDonalds'
    Brand.create! :name => 'Arbys'
    Brand.create! :name => 'Chipotle'
    Brand.create! :name => 'Pizza Hut'
  end
end
