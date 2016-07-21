class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|

      t.timestamps
    end
    add_reference :images, :product, index: true
    add_money :products, :price
  end
end
