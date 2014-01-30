json.array!(@crew_classes) do |crew_class|
  json.extract! crew_class, :item_id, :class_desc
  json.url crew_class_url(crew_class, format: :json)
end