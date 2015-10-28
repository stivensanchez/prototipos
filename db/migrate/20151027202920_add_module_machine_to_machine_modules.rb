class AddModuleMachineToMachineModules < ActiveRecord::Migration
  def change
    add_reference :machine_modules, :module_machine, index: true, foreign_key: true
  end
end
