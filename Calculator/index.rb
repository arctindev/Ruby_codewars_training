def arithmetic(a, b, operator)
    case operator
      when "add"
        return a + b
      when "subtract"
        return a - b
      when "multiply"
        return a * b
      when "divide"
        return a / b
      else
        return "error"
      end
  end