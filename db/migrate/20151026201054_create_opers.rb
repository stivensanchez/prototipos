class CreateOpers < ActiveRecord::Migration
  def change
    create_table :opers do |t|
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
