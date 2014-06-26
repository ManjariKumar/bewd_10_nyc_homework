class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :link
      t.string :category
      t.integer :upvotes

      t.timestamps
    end
  end
end