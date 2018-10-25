class AddUserId < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :user_id, :integer
  end
end
