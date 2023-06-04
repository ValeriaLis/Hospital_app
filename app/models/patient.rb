class Patient < ApplicationRecord
    has_one :patient_card, dependent: :destroy
end
