class Therapist < ApplicationRecord
  has_many :insurance_therapists, dependent: :destroy
  has_many :insurances, through: :insurance_therapists
end
