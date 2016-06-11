class Wallet < ActiveRecord::Base
   belongs_to :user
   belongs_to :category
   validates  :category_id, :user_id, :price, :name, presence: true
   #validate user_id, and category_id
   
   scope :spend, -> { joins(:category).merge(Category.where(:types => 0)) }
   scope :income, -> { joins(:category).merge(Category.where(:types => 1)) }
   
end
