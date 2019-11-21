class CreateAssetlists < ActiveRecord::Migration[5.2]
  def change
    create_table :assetlists do |t|
      t.string :mgmtno
      t.references :store, foreign_key: true
      t.string :username
      t.string :devicetype
      t.string :purpose
      t.string :manufacture
      t.string :modelno
      t.string :serialno
      t.string :description
      t.string :ram
      t.string :disk
      t.string :os
      t.string :hostname
      t.string :ipaddr
      t.string :gateway
      t.string :mac_wire
      t.string :mac_wireless
      t.date :date_buy
      t.date :date_produce
      t.integer :amt_buy
      t.text :remarks

      t.timestamps
    end
  end
end
