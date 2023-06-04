class Department < ApplicationRecord
  belongs_to :clinic
<<<<<<< HEAD
  has_many :doctor, dependent: :destroy
=======
  has_many :doctor
>>>>>>> ff55ef529d705a39dc66464b4f0771d12ab20226
end
