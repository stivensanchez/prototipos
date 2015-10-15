class AddManoObraPlaneadaToModuleWorks < ActiveRecord::Migration
  def change
    add_column :module_works, :manoObraPlaneada, :float
  end
end
