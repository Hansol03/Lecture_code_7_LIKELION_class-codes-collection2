require 'httparty'
require 'pp'
require 'json'

days = ["mon", "tue", "wed","thu","fri","sat","sun"]
all_webtoons = []  #[{"title=>"사생}, "introduction"=>"xxx"]   
                    #mon~sun 웹툰을 다 넣겠다. 

days.each do |day|
    url = "http://webtoon.daum.net/data/pc/webtoon/list_serialized/#{day}"
    response = HTTParty.get(url)
    cartoon = JSON.parse(response.body)
    cartoon["data"].each do |webtoon|
        # webtoons 안에 해당 웹툰  정보를 해시형태로 push 하겠다. 
        all_webtoons.push(
            {"title"=>webtoon["title"], 
            "introduction"=>webtoon["introduction"]
        })  
        # hash 의 key: title, introducton. value: webtoon["title"], webtoon["introducton"]
        # puts webtoon["title"]
        # puts webtoon["introduction"]
    end
end

all_webtoons.each do |w|
    puts w["title"]
    puts w["introduction"]
end
  #{ } :변수화
    # file = File.read(boxoffice.json)
# pp response
 #response 안에 들어있는 json을 ruby hash로 바꾸겠다. 
#pp data.keys
# .keys : 이 친구가 가지고 있는 개체 찾기  

# title, appthumnailimage, introduction, genre, averageScore 


# 과제 # 
# webtoon = {
#     title: data["data"][0]["title"],   #title: 은 :title => (해쉬형태)의 축약형  
#     appThumnailImage: data["data"][0]["appThumbnailImage"]["url"],
#     introduction: data["data"][0]["introduction"],
#     genre: data["data"][0]["cartoon"]["genres"][0]["name"],
#     averageScore: data["data"][0]["averageScore"]
# }

#  pp webtoon 



# data = {
#     "result" => XX,
#     "data" => [{웹툰1}, {웹툰2}]
# }

# pp data["data"][0]["title"]

# puts title= data["data"][0]["averageScore"]


# Cartoon["data"].each do |webtoon|
#     # webtoons 안에 해당 웹툰  정보를 해시형태로 push 하겠다. 
#     all_webtoons.push(
#         {"title"=>webtoon["title"], 
#         "introduction"=>webtoon["introduction"]
#     })  
#     # hash 의 key: title, introducton. value: webtoon["title"], webtoon["introducton"]
#     # puts webtoon["title"]
#     # puts webtoon["introduction"]
# end

# puts all_webtoons