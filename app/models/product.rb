class Product < ActiveRecord::Base
  attr_accessible :descrption, :image_url, :price, :title
  validates :title, :descrption, :image_url, :presence => true #表示不能为空
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01} 
  validates :title, :uniqueness => true #表示独一无二
  validates :image_url, :format => {
    :with     => %r{\.(gif|jpg|png)$}i,
    :message  => 'must be aURL for GIF,JPG or PNG image.'
  } #表示图片格式要求
end
