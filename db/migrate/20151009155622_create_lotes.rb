class CreateLotes < ActiveRecord::Migration
  def change
    create_table :lotes do |t|
      t.float :cantidad
      t.float :valor_unitario
      t.float :valor_total
      t.float :total
      t.references :variable, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
