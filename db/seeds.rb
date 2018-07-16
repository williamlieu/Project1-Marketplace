# User.destroy_all
# u1 = User.create :email => 'toto@cherry.com', :password => 'chocolate'
# u2 = User.create :email => 'simpsons@homer.com', :password => 'spongebob'

Product.destroy_all
p1 = Product.create :title => "Rolls Roys", :description => "Silver Rolls Royce Phantom"
p2 = Product.create :title => "BMW X6", :description => "Camo BMW X6"
p3 = Product.create :title => "Range Rover", :description => "Black mat Range Rover"

Listing.destroy_all
l1 = Listing.create :price => "431000", :category => "Cars", :location => "Sydney"
l2 = Listing.create :price => "124999", :category => "Cars", :location => "Mebourne"
l3 = Listing.create :price => "143650", :category => "Cars", :location => "Sydney"
