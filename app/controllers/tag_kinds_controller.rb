class TagKindsController < ApplicationController
  before_action :set_tag_kind, only: [:show, :edit, :update, :destroy]

  # GET /tag_kinds
  def index
    @tag_kinds = TagKind.page(params[:page])
  end

  # GET /tag_kinds/1
  def show
  end

  # GET /tag_kinds/new
  def new
    @tag_kind = TagKind.new
  end

  # GET /tag_kinds/1/edit
  def edit
  end

  # POST /tag_kinds
  def create
    @tag_kind = TagKind.new(tag_kind_params)

    if @tag_kind.save
      redirect_to @tag_kind, notice: 'Tag kind was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tag_kinds/1
  def update
    if @tag_kind.update(tag_kind_params)
      redirect_to @tag_kind, notice: 'Tag kind was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tag_kinds/1
  def destroy
    @tag_kind.destroy
    redirect_to configuration_url, notice: 'Tag kind was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_kind
      @tag_kind = TagKind.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tag_kind_params
      params.require(:tag_kind).permit(:kind)
    end
end
