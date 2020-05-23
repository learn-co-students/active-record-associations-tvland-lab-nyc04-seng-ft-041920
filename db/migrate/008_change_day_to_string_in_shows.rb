class ChangeDayToStringInShows < ActiveRecord::Migration[5.1]
    def change
        change_column :shows, :day, :string
    end
end

