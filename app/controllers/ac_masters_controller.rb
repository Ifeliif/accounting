class AcMastersController < ApplicationController
  before_action :set_ac_master, only: [:show, :edit, :update, :destroy]

  # GET /ac_masters
  # GET /ac_masters.json
  def index
    @ac_masters = AcMaster.all
  end

  # GET /ac_masters/1
  # GET /ac_masters/1.json
  def show
  end

  # GET /ac_masters/new
  def new
    @ac_master = AcMaster.new
  end

  # GET /ac_masters/1/edit
  def edit
  end

  # POST /ac_masters
  # POST /ac_masters.json
  def create
    @ac_master = AcMaster.new(ac_master_params)

    respond_to do |format|
      if @ac_master.save
        format.html { redirect_to @ac_master, notice: 'Ac master was successfully created.' }
        format.json { render :show, status: :created, location: @ac_master }
      else
        format.html { render :new }
        format.json { render json: @ac_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ac_masters/1
  # PATCH/PUT /ac_masters/1.json
  def update
    respond_to do |format|
      if @ac_master.update(ac_master_params)
        format.html { redirect_to @ac_master, notice: 'Ac master was successfully updated.' }
        format.json { render :show, status: :ok, location: @ac_master }
      else
        format.html { render :edit }
        format.json { render json: @ac_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ac_masters/1
  # DELETE /ac_masters/1.json
  def destroy
    @ac_master.destroy
    respond_to do |format|
      format.html { redirect_to ac_masters_url, notice: 'Ac master was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def import
    # fileはtmpに自動で一時保存される
    AcMaster.import(params[:file])
    redirect_to root_url, notice: "Acccount masters added!"
  end

  def delete
    AcMaster.delete_all
    redirect_to root_url
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ac_master
      @ac_master = AcMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ac_master_params
      params.require(:ac_master).permit(:code, :name, :cd_division, :level, :upper_code, :detail)
    end
end
