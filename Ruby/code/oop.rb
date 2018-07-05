#hash를 만드는 3가지 방법 

#donghyun = {"name"=> "donghyun", "age"=>"27", "gender"=>"male"}
hongsuk = {:name => "hongsuk", :age => "27", :gender => "male"}
#yerim = {name: "yerim" , age:"27", gender: "female"}
#yerim = {:name=> "yerim", :age=>"27", :gender=> "female"} 컴퓨터가 예림을 이렇게 해석한다 
#jongwon = {"name": "jongwon"} (x) 

#사람 C 동물 C 유기체 
# 학생 C 사람

# module Move
#     DESC = "움직임에 관련된 모듈입니다."  #상수를 쓸때는 무조건 대문자! 
#     def walk
#         puts "뚜벅뚜벅"
#     end
# end

class Person

    @@number = 0    #class 변수는 골뱅이 2개. Instance 변수는 골뱅이 1개 
    #include Move
    # name, age, gender #camelcase: StudnetNumber 
    def initialize(name, age, gender)
        @name = name
        @age = age
        @gender = gender
        @@number += 1
    end


    # attr_reader :name, :age, :gender 
    # attr_writer :name, :age, :gender 
    attr_accessor :name, :age, :gender

    def Person.number   #def에 정의할 때  instance는 sing, walk 등 그냥 쓰지만 
                        #class는 Perosn.number과 같이 class 이름과 .(dot)을 def에 같이 써준다
        @@number
    end

    # def name
    #     return @name
    # end

    # def sing
    #     puts "어찌합니까~"
    # end

    # def dance
    #     puts "아잉 싫어"
    # end

    # def age
    #     return @age #return 은 쓰지 않아도 루비가 인식함 
    # end 

    # def gender  #class 안에 인스턴스 변수를 가져오는 함수 ==  getter 
    #     return @gender
    # end

    # def gender=(input)  #class안에 인스턴스 변수를설정하는 함수 == setter     #instance 는 object와 같이 쓰이는 말 
    #     @gender = input
    # end

    # def name=(input)
    #     @name = input
    # end

    # def age(input)
    #     @age = input
    # end
#     def eat
#         puts "냠냠냠"
#     end
#     def drink
#         puts "으 취한다"
#     end
# end

# class Student < Person   #person 의 속성(요소)들을 student가 '상속'한다. 

#     def study
#         puts "아 공부시러"
#     end

    # def walk
    #     puts "뚜벅뚜벅"
    # end
end

# hongsuk = Person.new("홍석", "28", "male")

# puts hongsuk.name
# puts hongsuk.eat
# #puts hongsuk.study
# puts hongsuk.drink

# class Robot 
#     include Move
#     def initialize(name)
#         @name = name 
#     end

#     # def walk
#     #     puts "뚜벅뚜벅"
#     # end

# end

#changwon = Student.new("창원", "28", "male")  #new=initialize 
# yerim = Student.new("예림", "27", "female")
hongsuk = Person.new("홍석", "28","male")
yerim = Person.new("예림", "27","female")
dh1 = Person.new("동현", "27","male")
dh2 = Person.new("동현", "27","male")
dh3 = Person.new("동현", "27","male")
#changwon = Student.new("창원", "28", "male")

#donghyun = Robot.new("동현")

puts hongsuk.name
puts Person.number 
#donghyun.walk

# hongsuk.gender = "male"
# hongsuk.name = "홍식"
# puts hongsuk.gender
# puts hongsuk.age
# puts hongsuk.name
# hongsuk.sing
# hongsuk.dance
# yerim.sing
# yerim.dance
# changwon.sing

# puts changwon.name
# puts changwon.age
# puts changwon.gender

#puts donghyun["name"]
#puts hongsuk[:name] #params[:name]
#puts yerim[:name]

# puts Move::DESC

# puts Math::PI       #:: 뒤에는 정의된 상수들! 상수화된 methods들. 바뀌지 않는다. 

