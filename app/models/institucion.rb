class Institucion < ActiveRecord::Base
  attr_accessible :nombre
  belongs_to :estudiante
end
