class Item < ApplicationRecord
	has_many :issues, dependent: :destroy
		
end
