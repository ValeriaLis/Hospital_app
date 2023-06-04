class Department < ApplicationRecord
  belongs_to :clinic
  has_many :doctor, dependent: :destroy
end
