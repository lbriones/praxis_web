class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :razonsocial
      t.string :rut
      t.string :logo
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :conctato

      t.timestamps
    end
  end
end
