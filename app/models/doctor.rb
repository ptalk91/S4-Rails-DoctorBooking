class Doctor < ApplicationRecord
  has_many :appoitments
  belongs_to :city
  has_many :patients, through: :appoitments
  has_and_belongs_to_many :specialties
end
