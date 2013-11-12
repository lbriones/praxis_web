class Comuna < ActiveRecord::Base
  attr_accessible :nombre
  has_many :estudiante
end
