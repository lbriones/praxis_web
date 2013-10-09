class CreateInstitucions < ActiveRecord::Migration
  def change
    create_table :institucions do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
