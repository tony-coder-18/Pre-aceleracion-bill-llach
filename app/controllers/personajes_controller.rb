class PersonajesController < ApplicationController
  def index
    @personajes = Personaje.all
    render json: @personajes
  end

  def show
    @personaje = Personaje.find(params[:id])
    render json: @personaje, serializer: UnaPersonaSerializer
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
