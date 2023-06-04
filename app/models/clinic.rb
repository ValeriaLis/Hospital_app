class Clinic < ApplicationRecord
<<<<<<< HEAD
    has_many :department, dependent: :destroy
    has_many :patient_card, dependent: :destroy
=======
    has_many :department
    has_many :patient_card
>>>>>>> ff55ef529d705a39dc66464b4f0771d12ab20226
end
