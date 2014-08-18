class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.text :long_title
      t.integer :year
      t.string :genre_type
      t.text :notes
      t.string :source
      t.integer :total_words
      t.integer :total_paragraphs

      t.timestamps
    end
  end
end
