# 第一題
# 規則：
#
# 16 = 1 + 6 = 7
#
# 942 = 9 + 4 + 2 = 15  
#     = 1 + 5 = 6
#
# 132189 = 1 + 3 + 2 + 1 + 8 + 9 = 24
#        = 2 + 4 = 6 
#
# 493193 = 4 + 9 + 3 + 1 + 9 + 3 = 29
#        = 2 + 9 = 11
#        = 1 + 1 = 2

def number_root(n)
    # 實作內容請寫在這裡
    str_number = n.to_s
    ary_number = str_number.split(//)   # 轉型別後，用split(//)方法逐字分割存成陣列

    if ary_number.length >= 2

        int_result = 0

        for i in 0..ary_number.length - 1 do
            int_result += ary_number[i].to_i
        end
        number_root(int_result)
    else
        return str_number
    end

end

puts number_root(16)      # 印出 7
puts number_root(942)     # 印出 6
puts number_root(132189)  # 印出 6
puts number_root(493193)  # 印出 2

# 第二題
#
# 規則：同樣的數字最多只能出現 N 次
#
# 範例：
# [1, 2, 3, 1, 2, 2, 2]，如果 N = 2 表示同樣的數字最多只能出現 2 次
# 所以會得到 [1, 2, 3, 1, 2]

def remove_extra_number(list, n)
    # 實作內容請寫在這裡
    ary_result = []

    for i in 0..list.length - 1 do
        # Array方法：
        # include?() 得知陣列中是否包含該物件
        # count() 得知陣列中物件個數
        if !ary_result.include?(list[i]) || ary_result.count(list[i]) < n
            ary_result << list[i]
        end
    end

    return ary_result
end

p remove_extra_number([1, 1, 1, 1], 1)           # 印出 [1]
p remove_extra_number([1, 1, 1, 1], 2)           # 印出 [1, 1]
p remove_extra_number([20, 37, 20, 21], 1)       # 印出 [20, 37, 21]
p remove_extra_number([1, 2, 3, 1, 2, 2, 2], 2)  # 印出 [1, 2, 3, 1, 2]
p remove_extra_number([1, 2, 3, 4], 0)           # 印出 [1, 2, 3, 4]