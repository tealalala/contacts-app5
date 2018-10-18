class Bio < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :bio, :text
  end
end
