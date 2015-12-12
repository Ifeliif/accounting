json.array!(@parent_journals) do |parent_journal|
  json.extract! parent_journal, :id, :transaction_date
  json.url parent_journal_url(parent_journal, format: :json)
end
