class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :nombre
      t.string :medida
      t.float :cantidad

      t.timestamps null: false
    end
  end
end
