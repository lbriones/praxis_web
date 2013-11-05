class AddNewValuesToEstudiantes < ActiveRecord::Migration
  def change
    add_column :estudiantes, :carrera_codigo, :integer
    add_column :estudiantes, :comuna_codigo, :integer
    add_column :estudiantes, :institucion_codigo, :integer
    add_column :estudiantes, :nivel_codigo, :integer
  end
end
