class Voucher < ApplicationRecord
	has_many :issues
	accepts_nested_attributes_for :issues
end
