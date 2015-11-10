class MapsController < ApplicationController
def index
  end

  def coord
  	 $coordinates = { latitude: params['userLat'], longitude: params['userLong']}
  	  
  	 render :json => []
  
   end  

   def search
   
    parameters = { term: params[:term], limit: 16 }
    render json: Yelp.client.search_by_coordinates($coordinates, parameters)
  end
end
