class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :shop_name, default: "", null: false
      t.text :shop_comment, default: "", null: false
      t.string :ure_id
      t.string :list_id

      t.timestamps
    end
  end
end
