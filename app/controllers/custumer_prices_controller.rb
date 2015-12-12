class CustumerPricesController < ApplicationController
  before_action :set_custumer_price, only: [:show, :edit, :update, :destroy]

  # GET /custumer_prices
  # GET /custumer_prices.json
  def index
    @custumer_prices = CustumerPrice.all
  end

  # GET /custumer_prices/1
  # GET /custumer_prices/1.json
  def show
  end

  # GET /custumer_prices/new
  def new
    @custumer_price = CustumerPrice.new
  end

  # GET /custumer_prices/1/edit
  def edit
  end

  # POST /custumer_prices
  # POST /custumer_prices.json
  def create
    @custumer_price = CustumerPrice.new(custumer_price_params)

    respond_to do |format|
      if @custumer_price.save
        format.html { redirect_to @custumer_price, notice: 'Custumer price was successfully created.' }
        format.json { render :show, status: :created, location: @custumer_price }
      else
        format.html { render :new }
        format.json { render json: @custumer_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custumer_prices/1
  # PATCH/PUT /custumer_prices/1.json
  def update
    respond_to do |format|
      if @custumer_price.update(custumer_price_params)
        format.html { redirect_to @custumer_price, notice: 'Custumer price was successfully updated.' }
        format.json { render :show, status: :ok, location: @custumer_price }
      else
        format.html { render :edit }
        format.json { render json: @custumer_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custumer_prices/1
  # DELETE /custumer_prices/1.json
  def destroy
    @custumer_price.destroy
    respond_to do |format|
      format.html { redirect_to custumer_prices_url, notice: 'Custumer price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custumer_price
      @custumer_price = CustumerPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custumer_price_params
      params.require(:custumer_price).permit(:product_code, :custumer_code, :price)
    end
end
