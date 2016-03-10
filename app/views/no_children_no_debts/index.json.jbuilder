json.array!(@no_children_no_debts) do |no_children_no_debt|
  json.extract! no_children_no_debt, :id
  json.url no_children_no_debt_url(no_children_no_debt, format: :json)
end
