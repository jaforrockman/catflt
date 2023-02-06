class Company < ApplicationRecord
<<<<<<< HEAD
	has_many :collections
=======
	has_many :coll_vcr, dependent: :destroy
>>>>>>> ff9fa4288ea21eff91f5e459b353f2e4b07899e0
end
