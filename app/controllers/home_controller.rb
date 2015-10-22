class HomeController < ApplicationController
  def index
  	if @current_user
  		redirect_to restaurants_path
  	end
  end
end
