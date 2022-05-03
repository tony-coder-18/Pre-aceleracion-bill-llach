class PersonajesController < ApplicationController
  def index
    @personajes = Personaje.all
    render json: @personajes
  end

  def show
    @personaje = Personaje.find(params[:id])
    render json: @personaje, serializer: UnaPersonaSerializer
  end

  def create
    @personaje = Personaje.create(personaje_params)
    render json: @personaje
  end

  def update
    @personaje = Personaje.find(params[:id])
    @personaje.update_attributes(personaje_params)
    render json: @personaje
  end 

  def destroy 
    Personaje.destroy(params[:id])
  end
    

  private

  def personaje_params
    params.require(:personaje).permit(:nombre,:imagen,:edad, :peso, :historia)
  end
  
end
