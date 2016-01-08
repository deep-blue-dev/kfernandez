class AddAuthToUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :residence
      t.boolean :spouse_agreement
      t.boolean :children
      t.boolean :locate_spouse
      t.boolean :uncontested

      t.timestamps null: false
    end
    add_column :users, :name, :string
    add_column :users, :email, :string
    add_index :users, :email, unique: true
    add_column :users, :password_digest, :string
  end
end
