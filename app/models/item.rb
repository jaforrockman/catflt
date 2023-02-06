class Item < ApplicationRecord
	has_many :issues, dependent: :destroy
	has_many :collections, dependent: :destroy
			
end
