json.array!(@vendor_aliases) do |vendor_alias|
  json.extract! vendor_alias, :id, :alias
  json.url vendor_alias_url(vendor_alias, format: :json)
end
