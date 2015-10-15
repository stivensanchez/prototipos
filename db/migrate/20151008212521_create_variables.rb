class CreateVariables < ActiveRecord::Migration
  def change
    create_table :variables do |t|
      t.integer :numero
      t.string :ficha
      t.float :cantidad
      t.string :nombre
      t.string :medida
      t.float :valor_unidad
      t.float :valor_total
      t.float :total

      t.timestamps null: false
    end
  end
end
