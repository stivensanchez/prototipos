class AddModuloCreateToModuleWorks < ActiveRecord::Migration
  def change
    add_column :module_works, :moduloCreate, :string
  end
end
