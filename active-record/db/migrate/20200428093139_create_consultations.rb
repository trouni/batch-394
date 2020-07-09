class CreateConsultations < ActiveRecord::Migration[6.0]
	def change
		create_table :consultations do |t|
			t.references :patient
			t.references :doctor
			t.timestamps
		end
	end
end