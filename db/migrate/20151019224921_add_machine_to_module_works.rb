class AddMachineToModuleWorks < ActiveRecord::Migration
  def change
    add_reference :module_works, :machine, index: true, foreign_key: true
  end
end
