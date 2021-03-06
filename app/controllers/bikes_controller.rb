class BikesController < ApplicationController
    before_action :require_login, except: [:index]

    def index
        @bikes = Bike.all
    end

    def new
        @bike = Bike.new
    end

    def create
        @bike = Bike.create(bike_params)
        if @bike.save
            flash[:success] = "Bike has been created!"
            redirect_to @bike
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
            redirect_to @bike
        else
            render :edit
        end
    end

    def destroy
        @bike = Bike.find(params[:id])
        @bike.destroy
        redirect_to bikes_path
    end

    private

    def bike_params
        params.require(:bike).permit(:name, :demo, :rental, :image)
    end
end