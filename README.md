String reverse impementations
=============================

Need to impement `<string>.reverse` method in best ways

# Smoke

I think, there are two cool and compact solutions for that (see `lib` folder)

```ruby
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
    (1..).each { |n| print(str[-n]) }
  rescue
  end
end
```

It's tested. Feel free to grab and add your own solution!

`git clone https://github.com/dmproger/string_reverser`

`cd string_reverser`

`bundle`

`bundle exec rspec`

# Notes

This testcase was given at [Mercury](https://www.mercdev.com) during live codding session.

`method1` was suggested by CTO, `method2` - by me, as cool and compact to.
