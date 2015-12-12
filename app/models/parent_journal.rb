class ParentJournal < ActiveRecord::Base
  has_many :journals, dependent: :destroy
  accepts_nested_attributes_for :journals, allow_destroy: true, reject_if: lambda {|attributes| attributes['amount'].blank?}

end
