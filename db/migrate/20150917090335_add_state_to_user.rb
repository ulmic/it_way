class AddStateToUser < ActiveRecord::Migration
  def change
    add_column :users, :state, :text
    add_column :users, :role, :text
  end
end
