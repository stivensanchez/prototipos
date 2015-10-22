class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.float :totalPlaneada
      t.integer :operarios
      t.references :modulo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
