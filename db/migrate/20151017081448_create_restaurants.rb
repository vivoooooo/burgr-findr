class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
    	t.text :name
    	t.text :address
    	t.text :hours
    	t.text :yelp_rating
    	t.text :avg_burger_rating
    	t.text :latitude
    	t.text :longitude
    	t.text :yelp_link
    	t.timestamps
    end
  end
end
