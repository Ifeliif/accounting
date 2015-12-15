class GeneralLedgerController < ApplicationController
  def index
  	first_day = Date.new(Date.today.year, Date.today.mon, 1)
  	last_day = Date.new(Date.today.year, Date.today.mon, -1)
  	ac_master_id = 27
	@d_journals = Journal.joins(:ac_master,:parent_journal).
		select("name, transaction_date, amount")
		.where("transaction_date > ? and transaction_date < ? and ac_master_id = ?
			and journals.cd_division = 1",first_day,last_day,ac_master_id)
	@c_journals = Journal.joins(:ac_master,:parent_journal).
		select("name, transaction_date, amount")
		.where("transaction_date > ? and transaction_date < ? and ac_master_id = ?
			and journals.cd_division = 2",first_day,last_day,ac_master_id)

  end

  def search
  	first_day = Date.new(params[:dselect]['(1i)'].to_i, params[:dselect]['(2i)'].to_i, 1)
  	last_day = Date.new(params[:dselect]['(1i)'].to_i, params[:dselect]['(2i)'].to_i, -1) 
  	ac_master_id = params[:ac]['select'].to_i
	@d_journals = Journal.joins(:ac_master,:parent_journal).
		select("name, transaction_date, amount")
		.where("transaction_date > ? and transaction_date < ? and ac_master_id = ?
			and journals.cd_division = 1",first_day,last_day,ac_master_id)
	@c_journals = Journal.joins(:ac_master,:parent_journal).
		select("name, transaction_date, amount")
		.where("transaction_date > ? and transaction_date < ? and ac_master_id = ?
			and journals.cd_division = 2",first_day,last_day,ac_master_id)

  end
end
