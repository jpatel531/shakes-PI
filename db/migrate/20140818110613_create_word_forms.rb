class CreateWordForms < ActiveRecord::Migration
  def change
    create_table :word_forms do |t|
      t.text :plaintext
      t.text :phonetictext
      t.text :stemtext
      t.integer :occurences

      t.timestamps
    end
  end
end
