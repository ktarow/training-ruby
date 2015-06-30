
def keyword(name: "", age: 0) 
  p name
  p age
end

def keyword2(name: "", age: 0, **others)
  p name
  p age
  p others[:weight]
  p others[:height]
end

def keyword3(hash = {})
  p hash[:name]
  p hash[:age]
  p hash[:weight]
  p hash[:height]
end

hash = {
  name: "ktaro",
  age: 24
}

# キーワード引数
keyword(hash)
keyword({name:"ktaro",age: 24})
keyword(name: "ktaro", age: 24)

keyword2(name: "ktaro", age: 24, weight: 54)
keyword2(name: "ktaro", age: 24, weight: 54,height: 160)

# 擬似キーワード引数
keyword3
keyword3(name: "ktaro", age: 24, weight: 54,height: 160)
