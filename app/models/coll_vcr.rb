class CollVcr < ApplicationRecord
	has_many :collections, dependent: :destroy
	accepts_nested_attributes_for :collections
end
