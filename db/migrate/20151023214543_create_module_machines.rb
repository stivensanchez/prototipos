class CreateModuleMachines < ActiveRecord::Migration
  def change
    create_table :module_machines do |t|
      t.references :modulo, index: true, foreign_key: true
      t.references :machine, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
