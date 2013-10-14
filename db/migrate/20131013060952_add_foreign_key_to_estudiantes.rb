class AddForeignKeyToEstudiantes < ActiveRecord::Migration
  def change
  	add_index :estudiantes, :user_id
  end
end
