
class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item)
      @items.push(item)
  end

 
	
  def checkout
  	total_price=0
  	
  	@items.each do |items|
  		total_price+=items.price
  	end

  	if @items.length>5
  		total_price= total_price*0.9
    end
	 
	 puts "Your total today is #{total_price}. Have a nice day!"
  end
 
  
end

class Item 

  attr_reader :name, :price   
  def initialize(name, price)
  	         
      @name = name
      @price = price
  end

  def price
      @price     #Base price without discount
  end
end

# Housewares have no discount unless their unit price is more than 100€ / $100. 
# If the price is greater than 100€ / $100, there will be a 5% discount.

class Houseware < Item
 
  discount_price=0
  
  def initialize(name,price)
  	super
  end

  def price
 	
 	if (@price>100)     
 		houseware_price=@price*0.95  #5% discount
 	else
 		houseware_price=@price

    end
  	houseware_price
  end
end

#Fruits have no discount during weekdays but on weekends they have a 10% discount.

class Fruit < Item
  
  def initialize(name,price,day_week)
  	super(name,price)
  	@day_week=day_week
  end

  def price
  	if @day_week.downcase=="sunday" || @day_week.downcase=="saturday"
  		fruit_price=@price *0.90  # 10% discount
  	else
  		fruit_price=@price
  	end
  	fruit_price	
  end
      
end



joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10,"Sunday")
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)
apple=Fruit.new("Apple",7,"Monday")

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(vaccuum)
joshs_cart.add_item(banana)
joshs_cart.add_item(anchovies)
joshs_cart.add_item(apple)
joshs_cart.checkout