
module FixtureReplacement

  attributes_for :location do |l|
    l.address = random_string
  end

  attributes_for :entree do |e|
    e.calories = 100
    e.fat_calories = 80
    e.cholesterol = 10
  end

  attributes_for :restaurant do |r|
    r.wifi = true
    r.brand = Brand.find_by_name("Arbys")
    r.location = default_location
  end

  attributes_for :employee do |e|
    e.name = random_string
    e.restaurant = default_restaurant
  end

end
