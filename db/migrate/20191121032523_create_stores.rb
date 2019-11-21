class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :group
      t.string :storecode
      t.string :store_ab
      t.string :storename
      t.string :extension
      t.text :address
      t.string :telno

      t.timestamps
    end
  end
end
