class StoreController < ApplicationController
  def coun_t
  	if session[:counter].nil?
  		session[:counter]=0
  	end
  	session[:counter]+=1
  end



  def index
  	@products = Product.order(:title)
 
  	@counter  = coun_t
 @shown_message = "You've been here #{@counter} times" unless @counter <5
 
  end
end
