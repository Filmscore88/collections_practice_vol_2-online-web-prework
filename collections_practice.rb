def begins_with_r(array)
   array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(array)
  array.select do |x| x.include?("a")
  end
end 

def first_wa(array)
array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  
  array.delete_if { |x| !(x.is_a?String) }

end

def count_elements(array)
 array
 counts = Hash.new(0)
  array.collect{ |name| counts[name] += 1 }
  counts.collect do |hash,number| hash[:count]=number
  end
 counts.keys
end 

def merge_data(keys,data)
 keys.each do |x|
  data.each do |y| x.merge!(y[x[:first_name]])
 end
  end
end 

def find_cool(cool)
  cool.select do |x| x if x.has_value?('cool')
end
end

def organize_schools(schools)
   by_location = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
    by_location
end
  
end
