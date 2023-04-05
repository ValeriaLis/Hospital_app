class PatientCard < ApplicationRecord
  belongs_to :clinics
  belongs_to :patients
end
