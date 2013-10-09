class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :rut
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
