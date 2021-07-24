class BikeShopsController < ApplicationController
    include ApplicationHelper
    
    def index
        @bikes = BikeShop.all
    end

    def new 
        @bike_shop = BikeShop.new
    end

    def create 
        if session[:bike_shop_id].nil? && session[:rider_id].nil?
            @bike_shop = BikeShop.new(bike_shop_params)
            if @bike_shop.valid?
              @bike_shop.save
              redirect_to bike_shop_path(@bike_shop)
            else
              render :new
            end
        # Will be reintroduced when adding auth via devise 
        # else
        # redirect_to new, alert: 'You must sign out before creating a new account.'
        end
    end

    def show
        @bike_shop = BikeShop.find(params[:id])
    end

    def edit
        @bike_shop = BikeShop.find(params[:id])
    end

    def update
        @bike_shop = BikeShop.find(params[:id])
        if @bike_shop.update(bike_shop_params)
          redirect_to bike_shop_path(@bike_shop)
        else
          render :edit
        end
    end

    def delete
        @bike_shop = BikeShop.find(params[:id]).destroy
        redirect_to home_path, message: "BikeShop deleted successfully"
    end

    private

    def bike_shop_params
      params.require(:bike_shop).permit(:name, :address, :phone_number, :email, :email_confirmation)
    end
end
