class CollateralsController < ApplicationController
  before_action :set_collateral, only: %i[ show edit update destroy ]
  
  # GET /collaterals or /collaterals.json
	def index
		params[:search] ||= {query: ''} #set default query
	    @search = Search.new params.require(:search).permit(:query)
	    @collaterals = @search.result
	end
	 # GET /collaterals/1 or /collaterals/1.json
  def show
  end

  # GET /collaterals/new
  def new
    @collateral = Collateral.new
  end

  # GET /collaterals/1/edit
  def edit
  end

  # POST /collaterals or /collaterals.json
  def create
    @collateral = Collateral.new(collateral_params)

    respond_to do |format|
      if @collateral.save
        format.html { redirect_to @collateral, notice: "Collateral was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collaterals/1 or /collaterals/1.json
  def update
    respond_to do |format|
      if @collateral.update(collateral_params)
        format.html { redirect_to @collateral, notice: "Collateral was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collaterals/1 or /collaterals/1.json
  def destroy
    @collateral.destroy
    respond_to do |format|
      format.html { redirect_to collaterals_url, notice: "Collateral was successfully removed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collateral
      @collateral = Collateral.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def collateral_params
    #   params.require(:collateral).permit(:name,
    #                                      :url, 
    #                                      :kind,
    #                                      tags_attributes: [:id,
    #                                                        :name, 
    #                                                        :kind,
    #                                                        :_destroy
    #                                                       ]
    #                                     )
    # end
    def collateral_params
      params.require(:collateral).permit(:name,
                                         :url, 
                                         :collateral_kind_id,

                                         collateral_tags_attributes: [:id,
                                            :tag_name,
                                            :tag_kind_id,
                                            :strength,
                                            :_destroy]
                                        )
    end
end
