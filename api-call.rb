require 'net/http'
require 'uri'
require 'json'
require 'pp'

endpoints =["ability-scores","classes","conditions","damage-types","equipment-categories","equipment","features",
	"languages","magic-schools","monsters","proficiencies","races","skills","spellcasting","spells","startingequipment",
	"subclasses","subraces","traits","weapon-properties"]

## Make API Request ##
def makeAPIrequest (uriEnd, requesttype, jsonbody = '')
	uri = URI.parse("http://www.dnd5eapi.co/api/#{uriEnd}")
	requesttype.downcase!
	case requesttype
		when 'get'
			request = Net::HTTP::Get.new(uri)
		when 'create'
			request = Net::HTTP::Post.new(uri)
		when 'update'
			request = Net::HTTP::Patch.new(uri)
		else request = ''
	end
	request.content_type = "application/json"
	request.body = jsonbody unless jsonbody == ''

	req_options = {
	}
	response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
		http.request(request)
	end

	puts uri
	# pp response.body
	return response.body
end
##
def buildJSONfiles
	objects = Hash.new
	endpoints.each do |endpoint|
		list=JSON.parse(makeAPIrequest("#{endpoint}",'get').gsub('=>', ':')).to_hash['results']
		items = Array.new
		list.each do |item|
			id = item['url'].split(endpoint)[1]
			items << JSON.parse(makeAPIrequest("#{endpoint}#{id}",'get').gsub('=>', ':')).to_hash
		end
		objects[endpoint]=items
		File.open("Data/#{endpoint}.json","w") do |f|
			puts "Data/#{endpoint}.json"

			f.write(items.to_json)
		end
	end
end


file = File.read('Data/TemplateData/features.json')
data_hash = JSON.parse(file).uniq
# data_hash = JSON.parse(file)
File.open("Data/TemplateData/unique-features.json","w") do |f|
	f.write(data_hash.to_json)
end

# pp objects