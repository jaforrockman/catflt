class CollVcr < ApplicationRecord
	has_many :collections, dependent: :destroy
	accepts_nested_attributes_for :collections
	belongs_to :catering 
	belongs_to :company
end
