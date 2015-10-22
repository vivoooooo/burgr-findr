class ReviewsController < ApplicationController
	def index
	  @reviews = Review.all
	end  

	def show
	  @review = Review.find params[:id]
    @restaurant = @review.restaurant
    end

  def new
    @review = Review.new
    @restaurant = Restaurant.find params[:restaurant_id]
  end

	def create
	  @review = Review.create review_params
     if params[:file]
      response = Cloudinary::Uploader.upload params[:file], :flags => :keep_iptc, :angle => :exif
      @review.image = response["url"]
    elsif params[:review][:image]
        @review.image = params[:review][:image]
     end
    @restaurant = Restaurant.find params[:restaurant_id]
    @review.restaurant = @restaurant
    @review.save

    redirect_to ([@restaurant, @review])
	end


	def edit
	  @review = Review.find params[:id]
    @restaurant = @review.restaurant
	end

    def update
      review = Review.find params[:id]
      if params[:file]
      response = Cloudinary::Uploader.upload params[:file], :flags => :keep_iptc, :angle => :exif
      review.image = response["url"]
    elsif params[:review][:image]
        review.image = params[:review][:image]
     end
      restaurant = review.restaurant
      review.update review_params
      # review.restaurant_ids = params[:restaurant][:restaurant_ids]
      review.save
      redirect_to restaurant_review_path(restaurant, review)
    end

    def destroy
      review = Review.find params[:id]
      review.destroy
      redirect_to review

    end

    def results
       @reviews = Review.where("name ILIKE ? OR burger_name ILIKE ?", "%#{ params[:query] }%", "%#{ params[:query] }%")	
       # @reviews = Review.where("")
    end
    
    private

    def review_params 
    params.require(:review).permit(:burger_name, :rating, :review, :price, :image)
    end 


end


