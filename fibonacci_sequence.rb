def fibs(input)
    num1 = 0
    num2 = 1
    i = 3
    seq = [0, 1]
  
    if input == 0
      return []
    elsif input == 1
      return [0]
    elsif input == 2
      return [0, 1]
    else
      while i <= input
        seq << sum = num1 + num2
        num1 = num2
        num2 = sum
        i+=1
      end
      return seq
    end
end
  
def fibs_rec(input)
    if input == 0
      return []
    elsif input == 1
      return [0]
    elsif input == 2
      return [0, 1]
    end
  
    seq = fibs_rec(input - 1)
    seq << seq[-2] + seq[-1]
    
    return seq
end

print fibs(8)

print fibs_rec(8)