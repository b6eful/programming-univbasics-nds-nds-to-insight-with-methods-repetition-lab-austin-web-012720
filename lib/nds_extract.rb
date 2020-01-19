$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  directors_all = []
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    directors_all << director[:name]
    director_index += 1
  end
  
  return directors_all
end

def total_gross(source)
  index = 0
  total = 0
  while index < director_name.size do
    director = director_names[index]
    total += total[director]
    index += 1
  end
  return total
end


