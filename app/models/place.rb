class Place < ApplicationRecord
  # belongs_to :patient
  # belongs_to :report

  validates :room_number, length: { maximum: 50 }
  validates :zip_code, length: { is: 5 }, presence: true

  columns = %i[address city country state]
  columns.each do |column|
    validates column, length: { maximum: 500 }, presence: true
  end
end
