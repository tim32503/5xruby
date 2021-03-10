require 'json'
require 'open-uri'


apiUrl = 'https://data.epa.gov.tw/api/v1/aqx_p_13?format=json&limit=5&api_key=9be7b239-557b-4c10-9775-78cadfc555e9'
f = URI.open(apiUrl)


pf web_contents