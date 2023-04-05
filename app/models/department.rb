class Department < ApplicationRecord
  belongs_to :clinics
  has_many :doctors
end
