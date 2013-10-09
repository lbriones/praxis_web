class Empresa < ActiveRecord::Base
  attr_accessible :conctato, :direccion, :email, :logo, :razonsocial, :rut, :telefono
end
