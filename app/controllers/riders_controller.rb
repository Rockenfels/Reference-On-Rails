class RidersController < ApplicationController
    include ApplicationHelper
    
    def index
        @riders = Rider.all
    end

    def new 
        @rider = Rider.new
    end

    def create 
        if session[:rider_id].nil? && session[:bike_shop_id].nil?
            @rider = Rider.new(rider_params)
            if @rider.valid?
              @rider.save
              redirect_to rider_path(@rider)
            else
              render :new
            end
        # Will be reintroduced when adding auth via devise 
        # else
        # redirect_to new, alert: 'You must sign out before creating a new account.'
        end
    end

    def show
        @rider = Rider.find(params[:id])
    end

    def edit
        @rider = Rider.find(params[:id])
    end

    def update
        @rider = Rider.find(params[:id])
        if @rider.update(rider_params)
          redirect_to rider_path(@rider)
        else
          render :edit
        end
    end

    def delete
        @rider = Rider.find(params[:id]).destroy
        redirect_to home_path, message: "Rider deleted successfully"
    end

    private

    def rider_params
      params.require(:rider).permit(:first_name, :last_name, :preferred_name, :email, :email_confirmation, :uid)
    end
end
