class CartsController < ApplicationController


  def index 
  	@cart = current_user.cart

    puts "#" *60
    puts @cart.item_id
    puts "#" *60
  @item = Item.find(@cart[:item_id])
  end

  def create
  	@user = current_user
  	@cart = Cart.create!
  	@user.update(cart: @cart)
  	puts "#" *60
  	puts @user.cart
  	puts "#" *60
  end

end
