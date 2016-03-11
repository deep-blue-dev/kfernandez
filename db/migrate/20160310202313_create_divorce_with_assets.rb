class CreateDivorceWithAssets < ActiveRecord::Migration
  def change
    create_table :divorce_with_assets do |t|
      t.string :filing
      t.string :husband_name
      t.string :husband_address
      t.string :husband_city
      t.string :husband_state
      t.string :husband_zip
      t.string :husband_phone
      t.string :husband_fax
      t.string :husband_email
      t.string :wife_name
      t.string :wife_address
      t.string :wife_city
      t.string :wife_state
      t.string :wife_zip
      t.string :wife_phone
      t.string :wife_fax
      t.string :wife_email
      t.string :jurisdiction
      t.date :marriage_date
      t.date :separation_date
      t.string :dissolution

      t.timestamps null: false
    end
  end
end
