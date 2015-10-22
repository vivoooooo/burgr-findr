# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.destroy_all 

res1 = Restaurant.create(:name => "Mary's", :address => "154 Castlereagh Street, CBD, Sydney", :hours => "10 AM to 10 PM", :yelp_rating => "3.2", :avg_burger_rating => "4", :yelp_link => "http://www.yelp.com.au/biz/marys-city-sydney-3", :latitude => "-33.8960854", :longitude => "151.1797467" )
res2 = Restaurant.create(:name => "The Rook", :address => "Level 7, 56-58 York St Sydney New South Wales 2000", :hours => "10 AM to 10 PM", :yelp_rating => "4", :avg_burger_rating => "4", :yelp_link => "http://www.yelp.com.au/biz/the-rook-sydney", :latitude => "-33.86982", :longitude => "151.206436")

Review.destroy_all

rev1 = Review.create(:burger_name => "Mary's Burger", :rating => "4", :review => "We both ordered the famous Mary's burger, which consists of beef, cheese, onion, lettuce, tomato and the unique Mary's sauce. To summarise the experience in one word would be 'amazing', and it was honestly much better than what we were expecting. The buns were soft and the patty was juicy and fresh, which complemented the vegetables nicely. Personally, I felt that it was the best burger I have ever had for $10, so if you are looking for a convenient lunch or dinner, make sure to try this.", :price => "$10", :image => "http://www.theurbanlist.com/images/made/content/article/Marys-1_740_486_85_s_c1.jpg")
rev2 = Review.create(:burger_name => "Wagyu", :rating => "5", :review => "Super yummy burger!", :image => "http://farm9.staticflickr.com/8516/8550496457_6ce8054713.jpg")

res1.reviews << rev1
res2.reviews << rev2 

# u1 = User.first 

# u1.reviews << rev1 
# u1.reviews << rev2 




# u1 = User.create :name => 'Craigsy', :email => 'craigsy@gmail.com', :password => 'chicken', :admin => true
# u2 = User.create :name => 'Jonesy', :email => 'jonesy@gmail.com', :password => 'chicken'


