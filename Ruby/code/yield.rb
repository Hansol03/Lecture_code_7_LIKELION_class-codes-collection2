def hello
    #puts "hello"
    name = "Hansol"
    puts "Yield 전"
    yield(name)   #yield 가 나타나면 함수 출력 멈춤 그리고 밑에 how are you를 출력 한 후 다시 돌아와 yield 후를 출력한다. 
    puts "Yield 후"
end

hello() do |name|
    puts "how are you " + name end 