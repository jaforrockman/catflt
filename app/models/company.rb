class Company < ApplicationRecord
	has_many :coll_vcr, dependent: :destroy
end
