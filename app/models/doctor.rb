class Doctor < ApplicationRecord
	belongs_to :city
	has_many :choices
	has_many :appointments
	has_many :patients, through: :appointments
	has_many :specialities, through: :choices
end
