class Doctor < ApplicationRecord
  belongs_to :specialties
  belongs_to :departments
end
