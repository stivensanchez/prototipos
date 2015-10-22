class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :nombre
      t.references :modulo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
