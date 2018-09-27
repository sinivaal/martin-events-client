class EvenCategoriesController < ApplicationController
  before_action :set_even_category, only: [:show, :edit, :update, :destroy]

  # GET /even_categories
  # GET /even_categories.json
  def index
    @even_categories = EvenCategory.all
  end

  # GET /even_categories/1
  # GET /even_categories/1.json
  def show
  end

  # GET /even_categories/new
  def new
    @even_category = EvenCategory.new
  end

  # GET /even_categories/1/edit
  def edit
  end

  # POST /even_categories
  # POST /even_categories.json
  def create
    @even_category = EvenCategory.new(even_category_params)

    respond_to do |format|
      if @even_category.save
        format.html { redirect_to @even_category, notice: 'Even category was successfully created.' }
        format.json { render :show, status: :created, location: @even_category }
      else
        format.html { render :new }
        format.json { render json: @even_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /even_categories/1
  # PATCH/PUT /even_categories/1.json
  def update
    respond_to do |format|
      if @even_category.update(even_category_params)
        format.html { redirect_to @even_category, notice: 'Even category was successfully updated.' }
        format.json { render :show, status: :ok, location: @even_category }
      else
        format.html { render :edit }
        format.json { render json: @even_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /even_categories/1
  # DELETE /even_categories/1.json
  def destroy
    @even_category.destroy
    respond_to do |format|
      format.html { redirect_to even_categories_url, notice: 'Even category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_even_category
      @even_category = EvenCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def even_category_params
      params.require(:even_category).permit(:event_id, :categeory_id)
    end
end
