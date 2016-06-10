class Wallet < ActiveRecord::Base
   belongs_to :user
   belongs_to :category
   validates  :category_id, :user_id, :price, :name, presence: true
   #validate user_id, and category_id
end
