class CreateJodas < ActiveRecord::Migration
  def change
    create_table :jodas do |t|
      t.string :nombre
      t.string :apellido
      t.string :telefono

      t.timestamps null: false
    end
  end
end
