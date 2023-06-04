class Patient < ApplicationRecord
<<<<<<< HEAD
    has_one :patient_card, dependent: :destroy
=======
    has_one :patient_card
>>>>>>> ff55ef529d705a39dc66464b4f0771d12ab20226
end
