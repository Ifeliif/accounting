class TrialBalanceController < ApplicationController
  def index
  	first_day = Date.new(Date.today.year, Date.today.mon, 1)
  	last_day = Date.new(Date.today.year, Date.today.mon, -1)
	@journals = Journal.joins(:ac_master,:parent_journal).
		select("name, SUM(CASE WHEN journals.cd_division = 1 THEN amount ELSE 0 END) as d_amounts
		, SUM(CASE WHEN journals.cd_division = 2 THEN amount ELSE 0 END) as c_amounts")
		.where("transaction_date > ? and transaction_date < ?", first_day,last_day).group(:name)
  end

  def search
  	first_day = Date.new(params[:dselect]['(1i)'].to_i, params[:dselect]['(2i)'].to_i, 1)
  	last_day = Date.new(params[:dselect]['(1i)'].to_i, params[:dselect]['(2i)'].to_i, -1)  	
	@journals = Journal.joins(:ac_master,:parent_journal).
		select("name, SUM(CASE WHEN journals.cd_division = 1 THEN amount ELSE 0 END) as d_amounts
		, SUM(CASE WHEN journals.cd_division = 2 THEN amount ELSE 0 END) as c_amounts")
		.where("transaction_date > ? and transaction_date < ?", first_day,last_day).group(:name)
    render "index"
  end




end
