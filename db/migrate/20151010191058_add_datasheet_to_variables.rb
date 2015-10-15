class AddDatasheetToVariables < ActiveRecord::Migration
  def change
    add_reference :variables, :datasheet, index: true, foreign_key: true
  end
end
