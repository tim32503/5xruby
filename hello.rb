# p "hello world"

require 'sinatra'

get '/' do
    code = "<%= Time.now %>"
    erb code
end

get '/hello/:name' do
    "Hi! #{params['name']}"
end

get '/cats/:id' do
    "你好，你是第 #{params[:id]} 隻貓"
end

get '/now' do
    "你好，你是第 #{params[:id]} 隻貓"
end

get '/lottery/:num' do
    # 隨機在畫面上印出1~49  5個不重複數字

    n = params[:num].to_i   # 因QueryString為字串，需轉型才能丟至sample方法內使用
    
    if n > 0 and n < 50
        "#{[*1..49].sample(n)}"
    else
        "無法顯示"
    end
end