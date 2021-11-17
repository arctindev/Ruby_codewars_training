def divisors(n)
    divisors = 0;
    for i in 1..n 
      if n%i == 0
      divisors = divisors +1
        end
      end
    divisors
  end