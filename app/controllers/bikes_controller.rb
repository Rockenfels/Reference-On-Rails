class BikesController < ApplicationController
    
    def index
        @bikes = Bike.all
    end

    def new 
        @bike = Bike.new
    end

    def create 
        @bike = Bike.new(bike_params)
        if @bike.valid?
            @bike.save
            redirect_to bike_path(@bike)
        else
            render :new
        end
    end

    def show
        @bike = Bike.find(params[:id])
    end

    def edit
        @bike = Bike.find(params[:id])
    end

    def update
        @bike = Bike.find(params[:id])
        if @bike.update(bike_params)
          redirect_to bike_path(@bike)
        else
          render :edit
        end
    end

    def delete
        @bike = Bike.find(params[:id]).destroy
        redirect_to home_path, message: "Bike deleted successfully"
    end

    private

    def bike_params
      params.require(:bike).permit(
          :brand, :model, :year, :color, :gears, :suspension, :hydraulic, :tubeless, :price, :for_sale
        )
    end
end
