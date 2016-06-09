class Category < ActiveRecord::Base
   has_one :wallet
   validates  :name, :types, :path_img, presence: true
   enum types: { spending: 0, income: 1 }
   
   scope :spend, -> { where(types: 0) }
   scope :income, -> { where(types: 1) }
end
