class BridgeController < ApplicationController
	layout 'bridge'
	#before_action :checklogin

  def options
  	@Starters=Item.where("ItemCategory_ID=2 and ItemDescription='Starters'")
  	@Soups=Item.where("ItemCategory_ID=2 and ItemDescription='Soups&Salads'")
  	@MainCourse=Item.where("ItemCategory_ID=2 and ItemDescription='MainCouse'")
  	@Desserts=Item.where("ItemCategory_ID=2 and ItemDescription='Desserts'")
  	@Beverages=Item.where("ItemCategory_ID=2 and ItemDescription='Beverages'")

  end

  	def save
  		# part=""
  		# [1,2,3,4,5].each do |i|
  		# 	part="#{part}#{params["#{i}"]}"
  		# end
  		# puts "this is the part #{part}"
  		# hash=eval(part)
  		# bridge=Useritemsbridge.create(hash)
  		
  		1.upto(params.size-2) { |i|  
  		 bridge=Useritemsbridge.new
  		 bridge.User_ID=params["#{i}"][:User_ID]
  		 bridge.Item_ID=params["#{i}"][:Item_ID]
  		 bridge.Quantity=params["#{i}"][:Quantity]
  		 bridge.save
       redirect_to(:controller=>'session',:action=>'index')
  		 }
  	end

    def prewedding
      @wedding=Item.where("ItemCategory_ID=1")
      
    end


	
end
