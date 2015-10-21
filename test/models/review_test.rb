# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  burger_name   :text
#  rating        :text
#  review        :text
#  price         :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  image         :text
#  restaurant_id :integer
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
