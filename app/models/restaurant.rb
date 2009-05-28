class Restaurant < ActiveRecord::Base
  has_one :location
  has_many :employees
  has_many :menus
  has_many :entrees, :through => :menus
end
