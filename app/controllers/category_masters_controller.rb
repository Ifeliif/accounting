class CategoryMastersController < ApplicationController
  before_action :set_category_master, only: [:show, :edit, :update, :destroy]

  # GET /category_masters
  # GET /category_masters.json
  def index
    @category_masters = CategoryMaster.all
  end

  # GET /category_masters/1
  # GET /category_masters/1.json
  def show
  end

  # GET /category_masters/new
  def new
    @category_master = CategoryMaster.new
  end

  # GET /category_masters/1/edit
  def edit
  end

  # POST /category_masters
  # POST /category_masters.json
  def create
    @category_master = CategoryMaster.new(category_master_params)

    respond_to do |format|
      if @category_master.save
        format.html { redirect_to @category_master, notice: 'Category master was successfully created.' }
        format.json { render :show, status: :created, location: @category_master }
      else
        format.html { render :new }
        format.json { render json: @category_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_masters/1
  # PATCH/PUT /category_masters/1.json
  def update
    respond_to do |format|
      if @category_master.update(category_master_params)
        format.html { redirect_to @category_master, notice: 'Category master was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_master }
      else
        format.html { render :edit }
        format.json { render json: @category_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_masters/1
  # DELETE /category_masters/1.json
  def destroy
    @category_master.destroy
    respond_to do |format|
      format.html { redirect_to category_masters_url, notice: 'Category master was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_master
      @category_master = CategoryMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_master_params
      params.require(:category_master).permit(:code, :name, :level, :upper_code)
    end
end
