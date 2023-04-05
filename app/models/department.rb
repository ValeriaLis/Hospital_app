class Department < ApplicationRecord
  belongs_to :clinic
  has_many :doctor
end
