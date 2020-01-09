class Address < ApplicationRecord
  belongs_to :patient
  belongs_to :report
end
