class CreateInsuranceTherapists < ActiveRecord::Migration[7.1]
  def change
    create_table :insurance_therapists do |t|
      t.references :insurance, null: false, foreign_key: true
      t.references :therapist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
