class AddEndColumnToSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :submissions, :end_story, :boolean
  end
end
