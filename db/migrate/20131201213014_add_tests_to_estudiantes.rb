class AddTestsToEstudiantes < ActiveRecord::Migration
  def change
    add_column :estudiantes, :test_id, :integer
  end
end
