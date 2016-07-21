class AddTitleToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :title, :string
    add_column :categories, :parrent_id, :integer
  end
end
