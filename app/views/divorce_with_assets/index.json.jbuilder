json.array!(@divorce_with_assets) do |divorce_with_asset|
  json.extract! divorce_with_asset, :id, :filing, :husband_name, :husband_address, :husband_city, :husband_state, :husband_zip, :husband_phone, :husband_fax, :husband_email, :wife_name, :wife_address, :wife_city, :wife_state, :wife_zip, :wife_phone, :wife_fax, :wife_email, :jurisdiction, :marriage_date, :separation_date, :dissolution
  json.url divorce_with_asset_url(divorce_with_asset, format: :json)
end
