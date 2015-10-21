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
	 @restaurant = Restaurant.new review_params
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


@results = Restaurant.where("address ILIKE ? OR restaurant ILIKE ?", "%#{ params[:search] }%", "%#{ params[:search] }%")

       params = { term: 'burger',
           limit: 3,
           category_filter: 'discgolf'
         }

        client.search('Sydney', params, locale)

    end 

    def destroy
     restaurant = Restaurant.find params[:id]
    end

    private

    def restaurant_params
    params.require(:restaurant).permit(:name, :address, :hours, :yelp_rating, :avg_burger_rating, :latitude, :longtitude, :yelp_link)
    end


end
