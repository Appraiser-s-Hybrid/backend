module Api
  module V1    
    class HousesController < ApplicationController
      before_action :set_house, only: [:show, :edit, :update, :destroy]

      # GET /houses
      # GET /houses.json
      def index
        @houses = House.all
        render json: @houses
      end

      # GET /houses/1
      # GET /houses/1.json
      def show
        @house = House.find(params[:id])
        render json: @house
      end

      # GET /houses/new
      def new
        @house = House.new
      end

      # GET /houses/1/edit
      def edit
      end

      # POST /houses
      # POST /houses.json
      def create
        @house = House.new(house_params)

        if @house.save
          render json: @house
        else
          render json: @house.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /houses/1
      # PATCH/PUT /houses/1.json
      def update
        if @house.update(house_params)
          render json: @house
        else
          render json: @house.errors, status: :unprocessable_entity
        end
      end

      # DELETE /houses/1
      # DELETE /houses/1.json
      def destroy
        @house.destroy
        render json: 'Destoryed'
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_house
          @house = House.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def house_params
          params.require(:house).permit(:price, :airconType, :homeSqFt, :basementSqFt, :bathroomCount, :bedroomCount, :buildingQualityType, :buildingClass, :fireplace, :garageCarCount, :garageSqFt, :zipcode, :latitude, :longitude, :poolCount, :poolSize, :city, :county, :state, :yearBuilt, :roomCount, :lastSellPrice, :user_id)
        end
    end
  end
end
