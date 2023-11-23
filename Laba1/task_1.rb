z = -1
t = -1
x = -1
e = 2.7
pi = 3.14


until z >= 0 do
  puts "Provide z >= 0: "
  begin
    z = Integer(gets)
  rescue
    puts "You've probably provided not an Integer type"
  end
end

until x >= 0 do
  puts "Provide x >= 0: "
  begin
    x = Integer(gets)
  rescue
    puts "You've probably provided not an Integer type"
  end
end

until t >= 0 do
  puts "Provide t >= 0: "
  begin
    t = Integer(gets)
  rescue
    puts "You've probably provided not an Integer type"
  end
end

result = ((Math.acos(z**(1/5))+6.9*10**3.3) / (t+(Math.log10(t+1))**(1/5))) + e*Math.atan((x+pi)**1/5)
puts result
