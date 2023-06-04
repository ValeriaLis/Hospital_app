class Clinic < ApplicationRecord
    has_many :department, dependent: :destroy
    has_many :patient_card, dependent: :destroy
end
