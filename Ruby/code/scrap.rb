require "httparty"
require "nokogiri"

res = HTTParty.get("http://finance.naver.com/sise")
doc = Nokogiri::HTML(res)
kospi = doc.css("#KOSPI_now")
puts kospi 