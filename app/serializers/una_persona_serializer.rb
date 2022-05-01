class UnaPersonaSerializer < ActiveModel::Serializer
  attributes :id, :imagen, :nombre, :edad, :historia, :peso
end
