class UsersController < ApplicationController

  before_action :check_if_logged_in
  before_action :check_if_admin



   def edit
    @user = @current_user
   end

   def update
    @user = @current_user
    if @user.update user_params
      redirect_to root_path
    else
      render :edit
    end

    end

   def destroy
      if @user.destroy
      session[:user_id] = nil
      session[:omniauth] = nil
      redirect_to root_path
        else
          redirect_to edit_user_path(@user)
      end
   end  

  
 private
 

  def users_params
    params.require(:user).permit(:avatar, :location, :date_of_birth)
  end


  def check_if_logged_in
    redirect_to root_path unless current_user.present?
  end

  def check_if_admin
    redirect_to root_path unless current_user.present? && current_user.admin?
  end

end
