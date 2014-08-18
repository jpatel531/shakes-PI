class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.belongs_to :work, index: true
      t.integer :section
      t.integer :chapter
      t.text :description

      t.timestamps
    end
  end
end
