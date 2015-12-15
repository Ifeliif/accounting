class TopController < ApplicationController
  def index
  end

  def about
  end
  
  def download
  	file_name="ac_masters-2.csv"
  	filepath = Rails.root.join('public',file_name)
  	stat = File::stat(filepath)
  	send_file(filepath, :filename => file_name, :length => stat.size)
  end
end
