class CreateDslists < ActiveRecord::Migration[5.2]
  def change
    create_table :dslists do |t|
      t.integer :Index_no
      t.string :g_no
      t.string :g_year
      t.string :name
      t.string :company
      t.string :company_part
      t.string :company_title
      t.string :company_address
      t.string :company_tel
      t.string :home_address
      t.string :home_tel
      t.string :mobile
      t.string :confirm

      t.timestamps
    end
  end
end
