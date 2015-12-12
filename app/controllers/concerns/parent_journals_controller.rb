class ParentJournalsController < ApplicationController
  before_action :set_parent_journal, only: [:show, :edit, :update, :destroy]

  # GET /parent_journals
  # GET /parent_journals.json
  def index
    @parent_journals = ParentJournal.all
  end

  # GET /parent_journals/1
  # GET /parent_journals/1.json
  def show
  end

  # GET /parent_journals/new
  def new
    @ac_masters = AcMaster.find_by_sql(['select * from ac_masters where substr(code, 7,2) <> ?','00'])
    @parent_journal = ParentJournal.new
    4.times { @parent_journal.journals.build}
  end

  # GET /parent_journals/1/edit
  def edit
    @ac_masters = AcMaster.find_by_sql(['select * from ac_masters where substr(code, 7,2) <> ?','00'])
  end

  # POST /parent_journals
  # POST /parent_journals.json
  def create
    @parent_journal = ParentJournal.new(parent_journal_params)

    respond_to do |format|

      if @parent_journal.save
        format.html { redirect_to :parent_journals, notice: 'Parent journal was successfully created.' }
        format.js
      else
        format.html { render :new }
      end
    end
  end
  # PATCH/PUT /parent_journals/1
  # PATCH/PUT /parent_journals/1.json
  def update
    respond_to do |format|
      if @parent_journal.update(parent_journal_params)
        format.html { redirect_to :parent_journals, notice: 'Parent journal was successfully updated.' }
        format.json { render :show, status: :ok, location: @parent_journal }
      else
        format.html { render :edit }
        format.json { render json: @parent_journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parent_journals/1
  # DELETE /parent_journals/1.json
  def destroy
    @parent_journal.destroy
    respond_to do |format|
      format.html { redirect_to parent_journals_url, notice: 'Parent journal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent_journal
      @parent_journal = ParentJournal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parent_journal_params
      params.require(:parent_journal).permit(:transaction_date, journals_attributes: [:id,:ac_master_id, :amount, :parent_journal_id,:cd_division])
    end  
end
