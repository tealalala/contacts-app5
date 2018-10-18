class FixPhoneNumber < ActiveRecord::Migration[5.2]
  def change
    rename_column :contacts, :phonenumber, :phone_number
  end
end
