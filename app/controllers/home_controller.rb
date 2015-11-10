class HomeController < ApplicationController
  def index
  	if @current_user
  		redirect_to restaurants_path
  	end
  end

  def maphome
  end

  def map
    parameters = { term: params[:term], limit: 16 }
    render json: Yelp.client.search('San Francisco', parameters)
  end

end
