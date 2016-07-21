class CreateKind < ActiveRecord::Migration[5.0]
  def change
    create_table :kinds do |t|

      t.string :value
      t.string :kind
      t.references :products

    end
  end
end
