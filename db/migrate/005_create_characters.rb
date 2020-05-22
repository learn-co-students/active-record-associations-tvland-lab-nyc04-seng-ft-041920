class CreateCharacters < ActiveRecord::Migration[5.1]
    def change
    create_table :characters do |t| 
      t.string :name
      t.integer :actor_id
      t.integer :show_id
      t.text :catchphrase
    end
  end
end