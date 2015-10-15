class AddCantidadLoteToLotes < ActiveRecord::Migration
  def change
    add_column :lotes, :cantidadLote, :integer
  end
end
