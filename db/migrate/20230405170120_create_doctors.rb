class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.date :birth_date
      t.references :specialty, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true
      t.string :phone

      t.timestamps
    end
  end
end
