

xys = [
  [200000..299999, 3000..3999],
  [300000..399999, 2000..2999],
  [600000..699999, 1000..1999],
]

xys.each do |xs, ys|
  xs.each do |x|
    if x % 10000 == 0
      puts "x=#{x}"
    end
    ys.each do |y|
      # 結果の桁数で弾けるものを弾く
      z = x * y
      if z < 1000660000
        next
      end

      # yを桁数毎に分解
      y1, y10, y100, y1000 = y.digits

      # 各桁毎の結果桁数で弾けるものを弾く
      z1 = x * y1
      if z1 < 660000
        next
      end

      z10 = x * y10
      if z10 < 600000
        next
      end

      z100 = x * y100
      if z100 < 1066600
        next
      end

      z1000 = x * y1000
      if z1000 < 106006
        next
      end

      # x * y桁
      za = z.digits
      if za.size != 10
        next
      end
      if za[4] != 6 or za[5] != 6
        next
      end

      # x * y1桁
      z1a = z1.digits
      if z1a.size != 6
        next
      end
      if z1a[5] != 6 or z1a[4] != 6
        next
      end

      # x * y10桁
      z10 = x * y10
      z10a = z10.digits
      if z10a.size != 6
        next
      end
      if z10a[5] != 6
        next
      end

      # x * y100桁
      z100a = z100.digits
      if z100a.size != 7
        next
      end
      if z100a[4] != 6 or z100a[3] != 6 or z100a[2] != 6
        next
      end

      # x * y1000桁
      z1000a = z1000.digits
      if z1000a.size != 6
        next
      end
      if z1000a[3] != 6 or z1000a[0] != 6
        next
      end

      p ["!!!!!!!!!!!!!!!!", x, y, z]
    end
  end
end
