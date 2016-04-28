class AddGroupToUser < ActiveRecord::Migration
  def change
    add_column :users, :group, :text
  end
end
