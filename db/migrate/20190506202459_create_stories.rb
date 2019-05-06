class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :synopsis
      t.text :additional_detail
      t.boolean :published?
      t.integer :user_id
      t.timestamps
    end
  end
end
