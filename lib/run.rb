class Run # :nodoc:
  require_relative 'app'
  print 'Введите кол-во итераций '
  n = gets.to_i
  seq = App.new(n)
  seq.run
end
