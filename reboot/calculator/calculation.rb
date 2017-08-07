def calculate(first, operation, second)

  case operation
  when "+"
    result = first + second
  when "-"
    result = first - second
  when "*"
    result = first * second
  when "/"
    result = first / second
  end
  return result
end
