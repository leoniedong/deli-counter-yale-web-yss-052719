katz_deli = []

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.index(name)+1} in line."
end

def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do |name, index|
      name.prepend "#{index+1}. "
    end
    array = katz_deli.join(" ")
    puts "The line is currently: #{array}"
end
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
