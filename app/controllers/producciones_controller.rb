class ProduccionesController < ApplicationController
  def index
    @producciones = Produccion.all
    render json: @producciones
  end

  def show
    @produccion = Produccion.find(params[:id])
    render json: @produccion
  end

  def new
  end

  def create 
  end

  def edit 
  end 

  def update 
  end 

  def destroy 
  end 
  
end
