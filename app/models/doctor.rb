class Doctor < ApplicationRecord
  belongs_to :specialty
  belongs_to :department
end
