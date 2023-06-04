class AddFoundationYearToClinics < ActiveRecord::Migration[7.0]
  def change
    add_column :clinics, :foundation_year, :integer
  end
end
