class Post < ActiveRecord::Base
  attr_accessible :descripcion, :funciones, :requisitos, :sueldo, :titulo
end
