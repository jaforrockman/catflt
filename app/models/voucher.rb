class Voucher < ApplicationRecord
	has_many :issues, dependent: :destroy
	accepts_nested_attributes_for :issues
end
