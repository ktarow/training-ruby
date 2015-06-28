require 'mysql2'
require 'json'

class Dao
  def initialize(config)
    @config = config
  end

  def connect
    @con = Mysql2::Client.new(@config)
  end

  def close
    @con.close
  end

  attr_accessor :con
end

config = File.open('./config.json') do |json|
  JSON.parse(json.read,{:symbolize_names => true})
end

dao = Dao.new(config)
begin
  dao.connect
  # select
  dao.con.query("select * from account").each do |row|
    puts "name: #{row["nickname"]}, age: #{row["age"]}"
  end
rescue => ex
  puts ex.message
ensure
  dao.close
end
