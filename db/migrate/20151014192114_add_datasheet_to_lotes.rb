class AddDatasheetToLotes < ActiveRecord::Migration
  def change
    add_column :lotes, :datasheet, :string
  end
end
