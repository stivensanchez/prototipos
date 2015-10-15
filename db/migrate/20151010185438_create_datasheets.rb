class CreateDatasheets < ActiveRecord::Migration
  def change
    create_table :datasheets do |t|
      t.string :nombre
      t.string :referencia
      t.references :supply, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
