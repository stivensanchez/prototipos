class AddNumeroToLotes < ActiveRecord::Migration
  def change
    add_column :lotes, :numero, :integer
  end
end
