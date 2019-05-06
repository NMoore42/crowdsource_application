class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :subtitle
      t.text :summary
      t.text :content
      t.boolean :published?
      t.integer :story_id
      t.timestamps
    end
  end
end
