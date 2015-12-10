class AddSpouseInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :spouse_name, :string
    add_column :users, :spouse_email, :string
    add_column :users, :spouse_address, :string
    add_column :users, :spouse_dob, :date
  end
end
