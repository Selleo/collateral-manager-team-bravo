class PagesController < ApplicationController
  def home
  	@collaterals_all_items = Collateral.page(params[:page])
  end

  def configuration
  	@collateral_kind=CollateralKind.all
  	@tag_kind=TagKind.all
  	@tags =Tag.all

  end
end
