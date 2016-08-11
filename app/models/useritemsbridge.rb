class Useritemsbridge < ActiveRecord::Base
	self.table_name ="Useritemsbridge"
	belongs_to :users
	belongs_to :items
end
