class AddNombreToLotes < ActiveRecord::Migration
  def change
    add_column :lotes, :nombre, :string
  end
end
