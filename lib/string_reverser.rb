module StringReverser
  module_function

  def method1(str)
    str.chars.inject { |x, y| y + x }
  end

  def method2(str)
    @s = ''; (1..).each { |n| @s += str[-n] } rescue @s
  end
end
