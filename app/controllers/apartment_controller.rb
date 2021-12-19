class ApartmentController < ApplicationController
  def index
    @apartment = Apartment.all
    @buildings = Building.all
  end

  def show
    @apartment = Apartment.find(params[:id])
  end
   
  def create 
    @apartment = Apartment.create(
      numero_dep: params["numero_dep"],
      building_id: params["building_id"],
      )
      redirect_back(fallback_location: "/")
  end

  def new
    @apartments = Apartment.new
    @buildings = Building.all
  end
end
