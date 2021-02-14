class PagesController < ApplicationController
  def home
  	@collaterals_all_items = Collateral.all
  end

  def about
  end
end
