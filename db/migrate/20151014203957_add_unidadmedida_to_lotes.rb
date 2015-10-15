class AddUnidadmedidaToLotes < ActiveRecord::Migration
  def change
    add_column :lotes, :unidadmedida, :string
  end
end
