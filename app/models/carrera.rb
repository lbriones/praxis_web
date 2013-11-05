class Carrera < ActiveRecord::Base
  attr_accessible :nombre
  belongs_to :estudiante
end
