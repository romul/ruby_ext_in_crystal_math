module CommonMath
  class RbMath
    def fibonacci(n)
      return n if n <= 1
      fibonacci(n - 1) + fibonacci(n - 2)
    end

    def fibonacci_tail(n, prevVal = 0, nextVal = 1)
      return prevVal if n == 0
      return nextVal if n == 1
      return fibonacci_tail(n-1, nextVal, prevVal + nextVal)
    end
  end
end
