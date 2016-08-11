class Item < ActiveRecord::Base
	belongs_to :itemcategory
	has_many :useritemsbridge

end
