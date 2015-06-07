
hash = {
    :name => "ktaro",
    :age => "99"
}

puts hash[:name]
puts hash[:age]

# キーのコロンに空白があるとエラー
hash2 = {
    name: "watanabeko",
    age: "100"
}

puts hash2[:name]
puts hash2[:age]

# 文字列をシンボル変換しても呼び出せる
puts hash2["name".to_sym]
puts hash2["age".to_sym]

