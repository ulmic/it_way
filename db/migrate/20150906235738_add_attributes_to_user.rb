class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :text
    add_column :users, :last_name, :text
    add_column :users, :patronymic, :text
    add_column :users, :phone, :text
    add_column :users, :school, :text
    add_column :users, :municipality, :text
    add_column :users, :region, :text
    add_column :users, :locality, :text
    add_column :users, :experience, :text
    add_column :users, :answer, :text
    add_column :users, :reason, :text
    add_column :users, :has_i_note, :text
    add_column :users, :activity_line, :text
  end
end
