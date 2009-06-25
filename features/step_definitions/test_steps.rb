Then /^the "(.*)" restaurant in "(.*)" has (\d+) employees$/ do |brand, location_name, count|
  location = Location.find_by_address(location_name)
  restaurant = location.restaurant

  restaurant.should_not be_nil
  restaurant.brand.name.should == brand
  restaurant.employees.count.should == count.to_i
end
