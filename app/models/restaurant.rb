# == Schema Information
#
# Table name: restaurants
#
#  id                :integer          not null, primary key
#  name              :text
#  address           :text
#  hours             :text
#  yelp_rating       :text
#  avg_burger_rating :text
#  latitude          :text
#  longitude         :text
#  yelp_link         :text
#  created_at        :datetime
#  updated_at        :datetime
#

class Restaurant < ActiveRecord::Base
	has_many :reviews
end

