class Bicycle < ActiveRecord::Base
  validates_presence_of :name, :style, :price
end
