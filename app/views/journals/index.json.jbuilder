json.array!(@journals) do |journal|
  json.extract! journal, :id, :ac_master_id, :amount, :parent_journal_id
  json.url journal_url(journal, format: :json)
end
