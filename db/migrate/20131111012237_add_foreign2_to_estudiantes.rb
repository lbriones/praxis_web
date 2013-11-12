class AddForeign2ToEstudiantes < ActiveRecord::Migration
  def change
    add_column :estudiantes, :comuna_id, :integer
    add_column :estudiantes, :institucion_id, :integer
    add_column :estudiantes, :carrera_id, :integer
  end
end
