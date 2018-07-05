require "httparty"
require "uri"

url = "https://api.telegram.org/bot"
token = "619768706:AAGYqPu76KDZ_S4dXahaHdyfXUuIw2YYCTI" 

"https://api.telegram.org/
bot619768706:AAGYqPu76KDZ_S4dXahaHdyfXUuIw2YYCTI/
sendMessage?chat_id=xxx&text=hello"

id = "556030063"
msg = URI.encode("와우")
url + token + "/sendMessage?chat_id=#{id}&text=#{msg}"

#res = HTTParty.get(url+token + "/getMe") 
#hash = JSON.parse(res.body)

HTTParty.get(url + token + "/sendMessage?chat_id=#{id}&text=#{msg}")

puts hash 
