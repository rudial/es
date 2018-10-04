class School < ApplicationRecord
	validates :Name, :Address, presence: true
	validates :Name, :Address, uniqueness: true
	validates :Call_number, format: {
	with: %r{\A(\d{2}-){2}\d{2}} }, allow_blank: true
end
