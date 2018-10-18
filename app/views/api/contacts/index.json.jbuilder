json.array! @contacts do |contact|
  json.partial! "contact.json.jbuilder", contact: contact
end
