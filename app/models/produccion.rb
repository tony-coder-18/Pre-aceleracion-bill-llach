# == Schema Information
#
# Table name: producciones
#
#  id             :integer          not null, primary key
#  calificacion   :integer
#  fecha_creacion :date
#  imagen         :string
#  titulo         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  genero_id      :integer          not null
#
# Indexes
#
#  index_producciones_on_genero_id  (genero_id)
#
# Foreign Keys
#
#  genero_id  (genero_id => generos.id)
#
class Produccion < ApplicationRecord
  has_many :personaje_producciones
  has_many :personajes, through: :personaje_producciones
  belongs_to :genero
end
