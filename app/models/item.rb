class Item < ActiveRecord::Base
  attr_accessible :active, :caption, :condition, :cost_day, :cost_month
  attr_accessible :cost_week, :description, :title, :value, :user_id
  
  belongs_to  :user #
  has_many :calendars #
  has_many :item_images
  has_many :images, :through => :item_images #
 
  validates :caption,     :presence => true 
  validates :condition,   :presence => true 
  validates :cost_day,    :presence => true 
  validates :cost_month,  :presence => true 
  validates :cost_week,   :presence => true 
  validates :description, :presence => true 
  validates :title,       :presence => true 
  validates :value,       :presence => true 
  validates :user_id,     :presence => true 
end
