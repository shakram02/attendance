class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.datetime :start
      t.datetime :end
      t.references :attendee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
