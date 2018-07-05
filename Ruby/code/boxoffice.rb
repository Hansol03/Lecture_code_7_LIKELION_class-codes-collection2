require 'httparty'
require 'json'

base = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?"
key = "a319b44094d292894312ee6af79c4533"
targetDt = "20180703"

response = HTTParty.get(base + "key=" + key + "&" + "targetDt=" + targetDt)
data = JSON.parse(response.body)

#'마녀'의 정보를 저장한다.  
# 순위 rank
# 제목 title
# 누적 매출액 sales 
# 누적 관객수 audi

puts rank = data["boxOfficeResult"]["dailyBoxOfficeList"][0]["rank"]
puts title = data["boxOfficeResult"]["dailyBoxOfficeList"][0]["movieNm"]
puts sales = data["boxOfficeResult"]["dailyBoxOfficeList"][0]["salesAcc"]
puts audi = data["boxOfficeResult"]["dailyBoxOfficeList"][0]["audiAcc"]

#2번과제: 전체 영화(10개)를 movies 배열에 저장한다. 
# movies = [{영화1}, {영화2}, {영화3}, ..., {영화10}]
#{"rank" => XXX, "title"=> XXX, "sales" => XXX, "audi" => XXX}

#puts movies = {"title" => "dailyBoxOfficeList"[0]["movieNm"]}

#puts "boxOfficeResult".keys

movies = []

data["boxOfficeResult"]["dailyBoxOfficeList"].each do |movie|
    movies.push(
        {
            "rank" => movie["rank"],
            "title" => movie["movieNm"],
            "sales" => movie["salesAcc"],
            "audi" => movie["audiAcc"]
        }
    )
    end

    puts movies 
