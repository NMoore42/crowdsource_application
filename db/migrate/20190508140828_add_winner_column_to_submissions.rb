class AddWinnerColumnToSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :submissions, :winner?, :boolean
  end
end
