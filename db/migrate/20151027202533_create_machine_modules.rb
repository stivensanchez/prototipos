class CreateMachineModules < ActiveRecord::Migration
  def change
    create_table :machine_modules do |t|
      t.references :machine, index: true, foreign_key: true
      t.integer :cantidad
      t.date :fecha_compra
      t.float :precio
      t.float :total_maquina
      t.float :valor_total_maquina
      t.float :valor_depreciacion

      t.timestamps null: false
    end
  end
end
