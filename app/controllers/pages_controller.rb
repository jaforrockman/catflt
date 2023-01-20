class PagesController < ApplicationController
  #before_action :authenticate_user!, except: ['home']
	

  def home
  end
 
  def base_page

  end

  def free_drt
    @items = Item.all
    @vouchers = Voucher.all
    
  end

  def free_mrr
  end

  def about
  end
end
