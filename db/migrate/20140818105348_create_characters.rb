class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.text :name
      t.string :abbrev
      t.text :description
      t.integer :speech_count
      t.belongs_to :work, index: true

      t.timestamps
    end
  end
end
