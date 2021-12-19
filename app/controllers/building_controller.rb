class BuildingController < ApplicationController
  def index
    @buildings = Building.all
  end

  def create 
    @building = Building.create(
      nombre: params["nombre"],
      direccion: params["direccion"],
      ciudad: params["ciudad"]
      )
      redirect_back(fallback_location: "/")
  end

  def show
      @building = Building.find(params[:id])
  end

  def new
  end
end
