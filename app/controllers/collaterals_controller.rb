class CollateralsController < ApplicationController
  before_action :set_collateral, only: %i[ show edit update destroy ]
  
  # GET /collaterals or /collaterals.json
  def index
  		params[:search] ||= {query: ""} #set default query
        @search = Search.new params.require(:search).permit(:query)
        binding.pry
        @collaterals = @search.result
  end



end
