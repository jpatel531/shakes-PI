class AddColumnToWork < ActiveRecord::Migration
  def change
    add_column :works, :workid, :string
  end
end
