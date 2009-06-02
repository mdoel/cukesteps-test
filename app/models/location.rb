class Location < ActiveRecord::Base
  belongs_to :restaurant
  def self.from_factory(address)
    create_location(:address => address)
  end
end
