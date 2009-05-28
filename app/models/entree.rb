class Entree < ActiveRecord::Base
  has_many :menus
  has_many :restaurants, :through => :menus
end
