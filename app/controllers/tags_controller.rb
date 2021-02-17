class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  # GET /tag_kinds
  def index
    @tags = Tag.order(:tag_kind_id).page(params[:page])
    # binding.pry
  end

  # GET /tag_kinds/1
  def show
  end

  # GET /tag_kinds/new
  def new
    @tag = Tag.new
  end

  # GET /tags/1/edit
  def edit
  end

  # POST /tags
  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      redirect_to @tag, notice: 'Tag was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tags/1
  def update
    if @tag.update(tag_params)
      redirect_to @tag, notice: 'Tag was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tags/1
  def destroy
    @tag.destroy
    redirect_to tags_url, notice: 'Tag was successfully removed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tag_params
      params.require(:tag).permit(:name,:tag_kind_id)
    end
end
