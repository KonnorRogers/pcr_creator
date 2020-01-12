class Place < ApplicationRecord
  # belongs_to :patient
  # belongs_to :report

  validates :room_number, length: { maximum: 50 }

  columns = %i[address city country state zip_code]
  columns.each do |column|
    validates column, length: { maximum: 255 }, presence: true
  end
end
