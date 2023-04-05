class Clinic < ApplicationRecord
    has_many :department
    has_many :patient_card
end
