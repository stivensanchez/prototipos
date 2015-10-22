class AddSueldoTotalToWorks < ActiveRecord::Migration
  def change
    add_column :works, :sueldoTotal, :float
  end
end
