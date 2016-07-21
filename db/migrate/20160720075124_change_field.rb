class ChangeField < ActiveRecord::Migration[5.0]
  def change
    rename_column :kinds, :products_id, :product_id
  end
end
