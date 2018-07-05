require 'nokogiri'

file = File.open('scrap.html')

html = Nokogiri::HTML(file)  #::은 모듈
puts html.css("body > div > #name")
