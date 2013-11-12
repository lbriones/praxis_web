class RemoveCodigosRelacionadosFromEstudiantes < ActiveRecord::Migration
  def up
    remove_column :estudiantes, :carrera_codigo
    remove_column :estudiantes, :comuna_codigo
    remove_column :estudiantes, :institucion_codigo
    remove_column :estudiantes, :nivel_codigo
  end

  def down
    add_column :estudiantes, :nivel_codigo, :integer
    add_column :estudiantes, :institucion_codigo, :integer
    add_column :estudiantes, :comuna_codigo, :integer
    add_column :estudiantes, :carrera_codigo, :integer
  end
end
