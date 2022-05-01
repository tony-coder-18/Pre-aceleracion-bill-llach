class CreatePersonajeProducciones < ActiveRecord::Migration[7.0]
  def change
    create_table :personaje_producciones do |t|
      t.references :personaje, null: false, foreign_key: true
      t.references :produccion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
