class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.belongs_to :work, index: true
      t.belongs_to :character, index: true
      t.text :plaintext
      t.text :phonetictext
      t.text :paragraph_type 
      t.text :stemtext
      t.integer :section
      t.integer :chapter
      t.integer :word_count

      t.timestamps
    end
  end
end
