class AddFotoToEstudiantes < ActiveRecord::Migration
  def change
    add_column :estudiantes, :foto, :string
  end
end
