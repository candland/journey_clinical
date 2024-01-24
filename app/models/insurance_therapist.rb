class InsuranceTherapist < ApplicationRecord
  belongs_to :insurance
  belongs_to :therapist
end
