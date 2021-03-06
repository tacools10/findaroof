class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.string :status
      t.references :user, foreign_key: true
      t.references :asset, foreign_key: true

      t.timestamps
    end
  end
end
