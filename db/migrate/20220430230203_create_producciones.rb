class CreateProducciones < ActiveRecord::Migration[7.0]
  def change
    create_table :producciones do |t|
      t.string :titulo
      t.date :fecha_creacion
      t.integer :calificacion
      t.string :imagen

      t.timestamps
    end
  end
end
