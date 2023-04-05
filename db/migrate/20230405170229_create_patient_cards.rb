class CreatePatientCards < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_cards do |t|
      t.string :insurance_number
      t.date :date_start
      t.references :clinic, null: false, foreign_key: true
      t.string :diagnosis
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
