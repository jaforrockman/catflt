class Catering < ApplicationRecord
	has_many :users, dependent: :destroy
	has_many :issues, dependent: :destroy
	has_many :vouchers, dependent: :destroy
end
