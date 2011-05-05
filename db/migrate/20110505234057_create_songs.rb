class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.string :songname
      t.integer :user_id

      t.timestamps
    end
	add_index :songs, :user_id
  end

  def self.down
    drop_table :songs
  end
end
