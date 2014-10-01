class ShareCategoriesController < ApplicationController
  before_action :set_share_category, only: [:show, :edit, :update, :destroy]

  # GET /share_categories
  # GET /share_categories.json
  def index
    @share_categories = ShareCategory.all
  end

  # GET /share_categories/1
  # GET /share_categories/1.json
  def show
  end

  # GET /share_categories/new
  def new
    @share_category = ShareCategory.new
  end

  # GET /share_categories/1/edit
  def edit
  end

  # POST /share_categories
  # POST /share_categories.json
  def create
    @share_category = ShareCategory.new(share_category_params)

    respond_to do |format|
      if @share_category.save
        format.html { redirect_to @share_category, notice: 'Share category was successfully created.' }
        format.json { render :show, status: :created, location: @share_category }
      else
        format.html { render :new }
        format.json { render json: @share_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /share_categories/1
  # PATCH/PUT /share_categories/1.json
  def update
    respond_to do |format|
      if @share_category.update(share_category_params)
        format.html { redirect_to @share_category, notice: 'Share category was successfully updated.' }
        format.json { render :show, status: :ok, location: @share_category }
      else
        format.html { render :edit }
        format.json { render json: @share_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /share_categories/1
  # DELETE /share_categories/1.json
  def destroy
    @share_category.destroy
    respond_to do |format|
      format.html { redirect_to share_categories_url, notice: 'Share category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_share_category
      @share_category = ShareCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def share_category_params
      params.require(:share_category).permit(:name)
    end
end
