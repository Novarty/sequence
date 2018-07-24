class App # :nodoc:
  def initialize(iterations)
    @n = iterations
  end

  def run
    result = ''
    count = 1
    puts str = '1'
    (@n - 1).times do
      (0..str.size - 1).each do |i|
        if str[i + 1] && str[i + 2].nil?
          if str[i] == str[i + 1]
            count += 1
          else
            result += "#{count}#{str[i]}1#{str[i + 1]}"
            break
          end
        elsif str[i] == str[i + 1]
          count += 1
        else
          result += "#{count}#{str[i]}"
          count = 1
        end
      end
      puts str = result
      @n = result
      count = 1
      result = ''
    end
    @n
  end
end
