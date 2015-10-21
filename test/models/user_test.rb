# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  provider            :text
#  uid                 :text
#  name                :text
#  email               :text
#  gender              :text
#  date_of_birth       :date
#  location            :text
#  total_reviews       :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
