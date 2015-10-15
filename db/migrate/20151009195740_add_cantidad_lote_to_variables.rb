class AddCantidadLoteToVariables < ActiveRecord::Migration
  def change
    add_column :variables, :cantidadLote, :integer
  end
end
