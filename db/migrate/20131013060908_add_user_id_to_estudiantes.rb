class AddUserIdToEstudiantes < ActiveRecord::Migration
  def change
    add_column :estudiantes, :user_id, :integer
  end
end
