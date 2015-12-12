class TrialBalanceController < ApplicationController
  def index
	@journals = Journal.joins(:ac_master).
	select("name, SUM(CASE WHEN journals.cd_division = 1 THEN amount ELSE 0 END) as d_amounts
		, SUM(CASE WHEN journals.cd_division = 2 THEN amount ELSE 0 END) as c_amounts").group(:name)
	@first_division = AcMaster.select("name, COUNT(CASE WHEN substr(code, 7,2) <> '00' THEN 1 ELSE 0 END) as ac_count").group(:name)




  end
end
