class Estudiante < ActiveRecord::Base
  attr_accessible :direccion, :nombre, :rut, :bio, :foto, :telefono
end
