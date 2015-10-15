class AddModuloToModuleWork < ActiveRecord::Migration
  def change
    add_reference :module_works, :modulo, index: true, foreign_key: true
  end
end
