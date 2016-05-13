class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :place
      t.string :photo
      t.datetime :date
      t.string :manager

      t.timestamps null: false
    end
  end
end
