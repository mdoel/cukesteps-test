class Menu < ActiveRecord::Base
  belongs_to :entree
  belongs_to :restaurant
end
