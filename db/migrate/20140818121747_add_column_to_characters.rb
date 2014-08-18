class AddColumnToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :charid, :string
  end
end
