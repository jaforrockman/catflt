module PagesHelper

	def total_issue
		@vouchers = Voucher.all
		@voucher = Voucher.find(@vouchers.each.id)
		@issues = Issue.find(@voucher)

	end

end
