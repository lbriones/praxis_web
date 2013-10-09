class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.integer :sueldo
      t.text :descripcion
      t.text :funciones
      t.text :requisitos

      t.timestamps
    end
  end
end
