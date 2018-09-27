class School < ApplicationRecord
	validates :Name, :Address, :Call_number, presence: true
	validates :Name, :Address, uniqueness: true
	validates :Call_number, allow_blank: true, format: {
	with: %r{(\d{2}-){2}\d{2}},
	message: ':you must use only numbers and six symbols'
	}
end
