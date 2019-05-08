class RemoveColumnsFromSections < ActiveRecord::Migration[5.2]
  def change
    remove_column :sections, :subtitle, :string
    remove_column :sections, :summary, :text
    remove_column :sections, :content, :text
  end
end
