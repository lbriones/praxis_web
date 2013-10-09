class AddBioToEstudiantes < ActiveRecord::Migration
  def change
    add_column :estudiantes, :bio, :text
  end
end
