class Patient < ApplicationRecord
  has_many :appoitments
  belongs_to :city
  has_many :doctors, through: :appoitments
end
