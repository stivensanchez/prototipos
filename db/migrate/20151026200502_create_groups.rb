class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :ficha
      t.string :nombre
      t.references :modulo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
