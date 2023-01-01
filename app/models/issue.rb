class Issue < ApplicationRecord
  belongs_to :voucher
  belongs_to :item
end
