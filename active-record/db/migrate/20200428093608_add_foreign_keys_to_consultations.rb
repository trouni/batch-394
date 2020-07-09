class AddForeignKeysToConsultations < ActiveRecord::Migration[6.0]
	def change
		add_foreign_key :consultations, :patients
		add_foreign_key :consultations, :doctors
	end
end