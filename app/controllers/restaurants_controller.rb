class RestaurantsController < ApplicationController
	def index
	  @restaurants = Restaurant.all
	end  

	def show
	  @restaurant = Restaurant.find params[:id]
    end

    def new
      @restaurant = Restaurant.new
    end  

	def create
	 @restaurant = Restaurant.create review_params
	 # @restaurant.save
	end



	def edit
	 @restaurant = Restaurant.find params[:id]	
	end

	def update
	 restaurant = Restaurant.find params[:id]
	 restaurant.update review_params
	 restaurant.save
	 redirect_to restaurant
    end

    def search

   	   @results = []
 	   @lat = session[:lat]
 	   @long = session[:lon]

       @restlatlong = []

 	   coordinates = { latitude: @lat, longitude: @long}
 	      params = { term: 'burger',
           limit: 10
        }

        @yelp_results = Yelp.client.search_by_coordinates( coordinates, params )

        @yelp_results.businesses.collect do |r|
        	   	result = {
				   		:mobile_url => r.mobile_url,
				   		:yelp_rating => r.rating,
				   		:name => r.name,
				   		:rating_img_url => r.rating_img_url,
				   		:url => r.url,
				   		:address => r.location.display_address.join(","),
				   		:latitude => r.location.coordinate.latitude,
				   		:longitude => r.location.coordinate.longitude
				   	}

			 	   	@results << result

        end


     		
    
 	   					        
                  @results.each do |r| 
          			r1 = Restaurant.find_by(:name => r[:name])
                    if r1.nil?
	  				   r2 = Restaurant.new name: r[:name], address: r[:address], yelp_rating: r[:yelp_rating], yelp_link: r[:url], latitude: r[:latitude], longitude: r[:longitude]
                        r2.save 
	  				end  	
	  		      end 
 	   
   	

   end

   def location
   		session[:lat] = params['userLat']
       	session[:lon] = params['userLong']

    	render :json => [] 
    end
 



  def results
        @restaurants = Restaurant.where("name ILIKE ? OR address ILIKE ?", "%#{ params[:query] }%", "%#{ params[:query] }%")
  end			
    	

    def destroy
     restaurant = Restaurant.find params[:id]
    end

    private

    def restaurant_params
    params.require(:restaurant).permit(:name, :address, :hours, :yelp_rating, :avg_burger_rating, :latitude, :longtitude, :yelp_link)
    end


end
