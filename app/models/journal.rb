class Journal < ActiveRecord::Base
  belongs_to :parent_journal
  belongs_to :ac_master
end
