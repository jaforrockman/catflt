class Mess < ApplicationRecord
	has_many :vouchers, dependent: :destroy
end
