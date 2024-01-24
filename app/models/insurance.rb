class Insurance < ApplicationRecord
  has_many :insurance_therapists, dependent: :destroy
  has_many :therapists, through: :insurance_therapists
end
