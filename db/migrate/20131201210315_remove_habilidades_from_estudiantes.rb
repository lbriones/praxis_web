class RemoveHabilidadesFromEstudiantes < ActiveRecord::Migration
  def up
    remove_column :estudiantes, :liderazgo
    remove_column :estudiantes, :trabajo_en_equipo
    remove_column :estudiantes, :creatividad
    remove_column :estudiantes, :habilidades_de_comunicacion
    remove_column :estudiantes, :seguridad_personal
  end

  def down
    add_column :estudiantes, :seguridad_personal, :integer
    add_column :estudiantes, :habilidades_de_comunicacion, :integer
    add_column :estudiantes, :creatividad, :integer
    add_column :estudiantes, :trabajo_en_equipo, :integer
    add_column :estudiantes, :liderazgo, :integer
  end
end
