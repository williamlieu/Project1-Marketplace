User.destroy_all
u1 = User.create :email => 'toto@cherry.com', :password => 'chocolate'
u2 = User.create :email => 'simpsons@homer.com', :password => 'spongebob'

Product.destroy_all
p1 = Product.create :title => "Rolls Roys", :description => "Silver Rolls Royce Phantom", :price => "431000"
p2 = Product.create :title => "BMW X6", :description => "Camo BMW X6", :price => "124999"
p3 = Product.create :title => "Range Rover", :description => "Black mat Range Rover", :price => "143650"

Listing.destroy_all
l1 = Listing.create  :category => "Cars", :location => "Sydney"
l2 = Listing.create  :category => "Cars", :location => "Mebourne"
l3 = Listing.create  :category => "Cars", :location => "Sydney"

u1.products << p1
u1.products << p2
u2.products << p3

l1.products << p1 << p2
l2.products << p3 << p1
