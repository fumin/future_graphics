Dir.chdir('public/img') do
  puts Dir.glob('futureg/original/*.jpg').map{|f| %{<img src="img/#{f}">}}.join("\n")
  puts '================'
  puts Dir.glob('futureg/colour/*.jpg').map{|f| %{<img src="img/#{f}">}}.join("\n")
  puts '================'
  puts Dir.glob('futureg/pencil/*.jpg').map{|f| %{<img src="img/#{f}">}}.join("\n")
end
