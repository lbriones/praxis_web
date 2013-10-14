class Estudiante < ActiveRecord::Base
  attr_accessible :id, :direccion, :nombre, :user_id, :rut, :bio, :foto, :telefono
  belongs_to :user
end