x = 5

if (-4 < x) && (x <= 0)
  y = ((x - 2).abs / x**2 * Math.cos(x))**(1.0/7)
elsif (0 < x) && (x <= 12)
  y = (Math.tan(x + 1/Math::E**x) / Math.sin(x)**2)**(7.0/2)
else
  y = 1 / (1 + (x / (1 + (x / (1 + x)))))
end

puts y
