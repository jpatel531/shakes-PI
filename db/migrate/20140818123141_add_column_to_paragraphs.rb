class AddColumnToParagraphs < ActiveRecord::Migration
  def change
    add_column :paragraphs, :paragraph_num, :integer
  end
end
