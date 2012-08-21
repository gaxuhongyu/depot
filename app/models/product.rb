class Product < ActiveRecord::Base
  attr_accessible :descrption, :image_url, :price, :title
end
