class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.column :title, :string, :limit => 50
      t.column :description, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
