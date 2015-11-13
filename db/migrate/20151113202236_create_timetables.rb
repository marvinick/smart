class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.integer :hour
      t.integer :day

      t.timestamps null: false
    end
  end
end
