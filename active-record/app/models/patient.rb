class Patient < ActiveRecord::Base
	has_many :consultations
	has_many :doctors, through: :consultations
	# Creates a method like this:

	# def doctors
	# 	Doctor.joins(:consultations).where(consultations: { patient_id: id })
	# end

	# Other very *very* inefficient way to get the doctors:
	# Makes a query in the DB for EACH consultation:
	
	# def doctors
		# yun.consultations.map do |consultation|
		# 	consultation.doctor
		# end
	# end

	# Possible, but not necessary for our app, so we don't add it:
	# has_many :interns, through: :doctors
end