class CreateModuleWorks < ActiveRecord::Migration
  def change
    create_table :module_works do |t|
      t.float :minutos_reales
      t.float :costo_minuto
      t.float :otros_costos
      t.float :costo_mano_obra

      t.timestamps null: false
    end
  end
end
