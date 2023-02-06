class Collection < ApplicationRecord
	belongs_to :coll_vcr
	belongs_to :item
	belongs_to :company
end
