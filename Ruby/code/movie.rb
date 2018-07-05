#boxoffice.json 파일에 있는 내용을 불러와서
#가지고 놀아보기

require 'json'
require 'awesome_print'

file = File.read('boxoffice.json')
data = JSON.parse(file)
# puts data.keys
title = data["cards"][0]["items"][0]["item"]["title"]  #앤트맨과 와스프 

@no1 = data
@no2 = @no1["cards"]
@no3 = @no2[0]
@no4 = @no3["items"]

# genre = data["cards"][0]["items"][0]["item"]["main_genre"]  #액션 
# rate = data["cards"][0]["items"][0]["item"]["filmrate"]
# director = data["cards"][0]["items"][0]["item"]["directors"][0]["name"]  #페이튼 리드 
# poster = data["cards"][0]["items"][0]["item"]["poster"]["original"] #http://dhgywazgeek0d.cloudfront.net/watcha/image/upload/v1529024278/wre0ikxt1tucs9nujmn2.jpg

# movies = [
#     {
#         "title" => XX, 
#         "genre" => XX,
#         "rate" =>
#         "director" =>
#         "poster" => 
#     },
#     {

#     }
# ]

list = data["cards"]

#ap list.size

movies=[]
list.each do |l|
    movies.push(
        {
            "title" => l["items"][0]["item"]["title"],
            "genre" =>l["items"][0]["item"]["main_genre"],
            "rate" =>l]["items"][0]["item"]["filmrate"],
            "director" =>l["items"][0]["item"]["directors"][0]["name"],
            "poster" =>l ["items"][0]["item"]["poster"]["original"]
        }
    )
     l[["items"][0]["item"]["title"]]
end

# puts title, genre, rate, director, poster 


# puts data["cards"][0]["items"][0]["item"]["title"].count
# puts "title".size 
# title = @datas.each do |d| 
# title = data["cards"][0]["items"][0]["item"]["title"]

# puts title 



# data = {
#     "cards" => [{},{},{},{}]
#     "load_more" => XXXX,
#     "total" => YYYY
# }

