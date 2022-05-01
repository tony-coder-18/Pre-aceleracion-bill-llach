# == Schema Information
#
# Table name: generos
#
#  id         :integer          not null, primary key
#  imagen     :string
#  nombre     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Genero < ApplicationRecord
  has_many :producciones
end
