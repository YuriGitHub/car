class AddFieldToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :year, :integer
    add_column :products, :color, :string
  end
end
