class AddAnotherColumnToParagraphs < ActiveRecord::Migration
  def change
    add_column :paragraphs, :char_count, :integer
  end
end
