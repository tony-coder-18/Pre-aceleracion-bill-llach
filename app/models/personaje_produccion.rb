# == Schema Information
#
# Table name: personaje_producciones
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  personaje_id  :integer          not null
#  produccion_id :integer          not null
#
# Indexes
#
#  index_personaje_producciones_on_personaje_id   (personaje_id)
#  index_personaje_producciones_on_produccion_id  (produccion_id)
#
# Foreign Keys
#
#  personaje_id   (personaje_id => personajes.id)
#  produccion_id  (produccion_id => producciones.id)
#
class PersonajeProduccion < ApplicationRecord
  belongs_to :personaje
  belongs_to :produccion
end
