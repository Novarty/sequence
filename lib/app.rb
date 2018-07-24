require 'byebug'
class App # :nodoc:
  def initialize(sequence)
    @n = split_string(sequence)
  end

  def run(i = 0, count = 1, str = '')
    while i < @n.size
      while (@n[i] == @n[i + 1]) && (i + 1 < @n.size)
        count += 1
        i += 1
      end
      str += count.to_s + @n[i]
      count = 1
      i += 1
    end
    str
  end

  def split_string(string)
    string.delete("\n").split('')
  end
end
