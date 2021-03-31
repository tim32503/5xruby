def padding_zero(n, m = 6)
    # 實作內容
    # ----- 第一次解法 -----
    # result = ""
    # cnt = 1
    # while cnt <= m - n.to_s.length
    #     result += "0"
    #     cnt += 1
    # end

    # return result + n.to_s

    # ----- 第二次解法（查過method） -----
    # n.to_s.rjust(m, "0")

    "#{'0' * m}#{n}"[-m, m]
  end
  
  puts padding_zero(2)     # 印出 000002
  puts padding_zero(12)    # 印出 000012
  puts padding_zero(12, 8) # 印出 00000012