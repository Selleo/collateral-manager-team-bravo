class CollateralKindsController < ApplicationController
  before_action :set_collateral_kind, only: [:show, :edit, :update, :destroy]

  # GET /collateral_kinds
  def index
    @collateral_kinds = CollateralKind.page(params[:page])
  end

  # GET /collateral_kinds/1
  def show
  end

  # GET /collateral_kinds/new
  def new
    @collateral_kind = CollateralKind.new
  end

  # GET /collateral_kinds/1/edit
  def edit
  end

  # POST /collateral_kinds
  def create
    @collateral_kind = CollateralKind.new(collateral_kind_params)

    if @collateral_kind.save
      redirect_to @collateral_kind, notice: 'Collateral kind was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /collateral_kinds/1
  def update
    if @collateral_kind.update(collateral_kind_params)
      redirect_to @collateral_kind, notice: 'Collateral kind was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /collateral_kinds/1
  def destroy
    @collateral_kind.destroy
    redirect_to configuration_url, notice: 'Collateral kind was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collateral_kind
      @collateral_kind = CollateralKind.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def collateral_kind_params
      params.require(:collateral_kind).permit(:kind)
    end
end
