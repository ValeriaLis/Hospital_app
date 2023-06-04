class Specialty < ApplicationRecord
    has_one :doctor, dependent: :destroy
end
