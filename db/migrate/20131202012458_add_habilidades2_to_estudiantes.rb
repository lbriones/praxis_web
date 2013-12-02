class AddHabilidades2ToEstudiantes < ActiveRecord::Migration
  def change
    add_column :estudiantes, :liderazgo, :integer
    add_column :estudiantes, :trabajo_en_equipo, :integer
    add_column :estudiantes, :creatividad, :integer
    add_column :estudiantes, :habilidades_de_comunicacion, :integer
    add_column :estudiantes, :seguridad_personal, :integer
  end
end
