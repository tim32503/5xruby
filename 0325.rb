# 練習題 1
# 規則：針對陣列中「奇數」的數字進行由小到大的數字排序

# 範例： 陣列 [5, 8, 6, 3, 4] 當中，第 1 個元素 5 跟第 4 個元素 3 是奇數，其它是偶數，所以只會把 5 跟 3 進行排序（由小到大），然後再放回原本的位置，最後變成 [3, 8, 6, 5, 4]。

def sort_array(list)
  # 判斷參數是否為陣列物件
  if list.class.to_s != "Array"
    return nil
  end

  # --- 我的方法 ---
  # odd?：Integer方法，可判斷是否為奇數，回傳值為true或false
  # select：array方法，可依照給予之條件挑選出符合之元素，組合並回傳成新陣列
  # odds = list.select{|x| x.odd?}.sort
  # cnt = 0

  # 0.upto(list.count - 1) do |i|
  #   if list[i].odd?
  #     list[i] = odds[cnt]
  #     cnt += 1
  #   end
  # end

  # return list

  # --- 方法 1 ---
  # odds = list.select(&:odd?).sort
  # list.map{|x| x.even? ? x : odds.shift}

  # --- 方法 2 ---
  odds = list.select(&:odd?).sort.each
  list.map{|x| x.even? ? x : odds.next}
end

p sort_array([7, 1])                          # 印出 [1, 7]
p sort_array([5, 8, 6, 3, 4])                 # 印出 [3, 8, 6, 5, 4]
p sort_array([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])  # 印出 [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]

# 練習題 2
# 實作摩斯密碼解碼器

# 規則：

# 請參考 https://en.wikipedia.org/wiki/Morse_code
# 可解讀 distress signal
# 附註：不要使用現成套件

def decoder(code)
  # 實作內容

  dict = {
    "A" => ".-",
    "B" => "-...",
    "C" => "-.-.",
    "D" => "-..",
    "E" => ".",
    "F" => "..-.",
    "G" => "--.",
    "H" => "....",
    "I" => "..",
    "J" => ".---",
    "K" => "-.-",
    "L" => ".-..",
    "M" => "--",
    "N" => "-.",
    "O" => "---",
    "P" => ".--.",
    "Q" => "--.-",
    "R" => ".-.",
    "S" => "...",
    "T" => "-",
    "U" => "..-",
    "V" => "...-",
    "W" => ".--",
    "X" => "-..-",
    "Y" => "-.--",
    "Z" => "--..",
    "0" => "-----",
    "1" => ".----",
    "2" => "..---",
    "3" => "...--",
    "4" => "....-",
    "5" => ".....",
    "6" => "-....",
    "7" => "--...",
    "8" => "---..",
    "9" => "----.",
    " " => "space"
  }

  # 特殊處理-求救訊號
  if code.eql?("...---...")
    return "SOS"
  end

  # 判斷是否由-或.或空白字元所組成
  if (!code.include? "-" and !code.include? ".") or !code.include? " "
    return "無法解密"
  end

  # --- 我的方法 ---
  # 空白字元處理，以假字串先作為代替
  # code = code.sub("   "," space ")

  # split_array = code.split(" ")
  # result = ""

  # cnt = 0
  # while cnt < split_array.count
  #   result += dict.key(split_array[cnt])
  #   cnt += 1
  # end

  # return result

  # --- 方法 1 ---
  words = code.split('  ')

  words.map do |word|
    word.split(' ').map{ |c| dict.key(c)}.join
  end.join(' ')
end

puts decoder('.... . .-.. .-.. ---   ..... -..- .-. ..- -... -.--')  # 印出 HELLO 5XRUBY
puts decoder('...---...')                                            # 印出 SOS
puts decoder('... --- ...')                                          # 印出 SOS