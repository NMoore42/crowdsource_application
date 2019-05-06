class CreateSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.string :subtitle
      t.text :summary
      t.text :content
      t.integer :user_id
      t.integer :section_id
      t.timestamps
    end
  end
end
