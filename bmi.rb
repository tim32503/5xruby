require 'sinatra'

get '/' do
    erb :index
end

get '/calc/bmi' do
    erb :bmiForm
end

# 計算BMI值並呈現在View上
post '/calc/bmi/result' do
    h = params['height'].to_f
    w = params['weight'].to_f

    # 身高的單位轉換：cm->m
    h = h / 100

    # BMI計算
    result = w / (h * h)

    "您的 BMI 值是 #{result}"
end