# == Schema Information
#
# Table name: personajes
#
#  id         :integer          not null, primary key
#  edad       :integer
#  historia   :text
#  imagen     :string
#  nombre     :string
#  peso       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Personaje < ApplicationRecord
  has_many :personaje_producciones
  has_many :producciones, through: :personaje_producciones
end
