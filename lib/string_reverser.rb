module StringReverser
  module_function

  def method1(str)
    str.chars.inject { |x, y| y + x }
  end

  def method2(str)
    @s = ''; (1..).each { |n| @s += str[-n] } rescue @s
  end

  #
  # if you need just print result into your stdout
  # method2 can be more nicely and compact
  #
  def method2_stdout(str)
    (1..).each { |n| print(str[-n] || raise) }
  rescue
  end
end
