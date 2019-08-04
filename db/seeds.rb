# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
require "date"


system("clear")

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

50.times do |k|

		array_of_speciality = [

	 "Anterior segment/cornea ophthalmology",
	 "Glaucoma ophthalmology",
	 "Neuro-ophthalmology",
	 "Ocular oncology",
	 "Oculoplastics/orbit",
	 "Ophthalmic Plastic & Reconstructive Surgery",
	 "Retina/uveitis",
	 "Strabismus/pediatric ophthalmology",
	 "Pediatric cardiology",
	 "Pediatric critical care medicine",
	 "Pediatric endocrinology",
	 "Pediatric gastroenterology",
	 "Pediatric hematology-oncology",
	 "Pediatric infectious diseases",
	 "Pediatric nephrology",
	 "Pediatric pulmonology",
	 "Pediatric rheumatology",
	 "Pediatric sports medicine",
	 "Pediatric transplant hepatology",
	 "Aerospace medicine",
	 "Medical toxicology",
	 "Public health medicine",
	 "Addiction psychiatry",
	 "Administrative psychiatry",
	 "Child and adolescent psychiatry",
	 "Community psychiatry",
	 "Consultation liaison psychiatry",
	 "Emergency psychiatry",
	 "Forensic psychiatry",
	 "Geriatric psychiatry"]
	 
	
		c = City.create(name: Faker::Nation.capital_city) 
		#ch = Choice.new
		s = Speciality.create(name: "#{array_of_speciality[rand(0..29)]}")
		#ch.update(speciality: s)
		d = Doctor.new(first_name: ("Dr #{Faker::Name.first_name}"), last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
		d.update(city:c)
		#ch.update(speciality: s)
		p = Patient.new(first_name: "#{Faker::Name.prefix} #{Faker::Name.first_name}", last_name: Faker::Name.last_name) 
		p.update(city:c)
		
end

	 y = Doctor.all
	 x = Patient.all
	 z = City.all
	 xx = Speciality.all
	 
	z.length.times do |m|
	 a = Appointment.new(date:Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default), doctor: y[rand(0..49)], patient: x[rand(0..49)])
	 a.update(city:z[rand(m..z.length)])
	 ch = Choice.new 
	 ch.update(speciality: xx[rand(0..29)])
	 ch.update(doctor: y[rand(0..z.length)])
	end

	w = Choice.all

	tp City.all
	tp Doctor.all.limit(4), "first_name", "speciality", "zip_code", "city"
	tp Patient.all.limit(3), "first_name", "last_name", "", "city"
	tp Appointment.all.limit(4), "date", "doctor", "patient", "city"
	tp Choice.all.limit(4), "doctor", "speciality"
	tp Speciality.all	

