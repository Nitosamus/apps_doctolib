class Speciality < ApplicationRecord
	has_many :choices
	has_many :doctors, through: :choices
end
