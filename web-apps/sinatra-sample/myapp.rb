require 'sinatra'
set:environment,:production

get '/' do
  "Hello World"
end

# パラメータ受け取り
get '/:param' do
  # ハッシュ値paramsを利用
  "#{params['param']}"
end

# ブロックにパラメータ値を渡すこともできる
get '/block/:param' do |var|
  "block: #{var}"
end
