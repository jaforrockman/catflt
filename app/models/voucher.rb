class Voucher < ApplicationRecord
	belongs_to :catering
	belongs_to :mess
	#belongs_to :user
	has_many :issues, dependent: :destroy
	accepts_nested_attributes_for :issues
	
end
