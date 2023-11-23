vertices = [
  [114, 146], [147, 106], [167, 84], [224, 56], [277, 47],
  [373, 41], [441, 45], [456, 101], [453, 147], [453, 213],
  [425, 245], [382, 270], [330, 273], [290, 248], [300, 199],
  [238, 195], [197, 212], [151, 209], [105, 190], [104, 163]
]

total_area = 0.0

def triangle_area(vertices)
  x1, y1 = vertices[0]
  x2, y2 = vertices[1]
  x3, y3 = vertices[2]

  return 0.5 * ((x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)).abs)
end


# Split polygon into triangles
(2...vertices.length).each do |i|
  total_area += triangle_area([vertices[0], vertices[i - 1], vertices[i]])
end

puts "Area of polygon: #{total_area}"
