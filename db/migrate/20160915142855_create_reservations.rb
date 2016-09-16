class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :entrytime
      t.datetime :endtime
      t.integer :fieldnumber

      t.timestamps null: false
    end
  end
end
