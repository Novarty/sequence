class Run # :nodoc:
  require_relative 'app'
  print 'Введите строку '
  string = gets
  seq = App.new(string)
  puts seq.run
  # n.times seq.run
end
