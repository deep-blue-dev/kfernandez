class CreateNoChildrenNoDebts < ActiveRecord::Migration
  def change
    create_table :no_children_no_debts do |t|
      t.string :husband_name
      t.string :husband_address
      t.string :husband_city
      t.string :husband_state
      t.string :husband_zip
      t.string :husband_phone
      t.string :husband_fax
      t.date :husband_date
      t.string :husband_email
      t.string :wife_name
      t.string :wife_address
      t.string :wife_city
      t.string :wife_state
      t.string :wife_zip
      t.string :wife_phone
      t.string :wife_email
      t.date :wife_date
      t.date :marriage_date
      t.string :marriage_city
      t.string :marriage_state
      t.string :marriage_country

      t.timestamps null: false
    end
  end
end
