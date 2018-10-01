def sort_array_asc(array)
  array.sort {|a, b| a <=> b}
end

def sort_array_desc(array)
  array.sort {|a, b| b <=> a}
end

def sort_array_char_count(array)
  array.sort {|a, b| a <=> b && a.length <=> b.length}
end

def swap_elements(array)
  array.sort {|a, b| a[1] <=> b && a.length <=> b.length}
end

def swap_elements_from_to(array, index, destination_index)
  array.each_with_index.collect do |a, i|
    if i == index
      array[destination_index]
    elsif i == destination_index
      array[index]
    else
      a
    end
  end
end

def reverse_array(array)
  array.sort {|a,b| array.index(b) <=> array.index(a)}
end

def kesha_maker(array)
  final_array = []
  array.each do |x|
    temp_array = x.split("")
    temp_array[2] = '$'
    final_array << temp_array.join("")
  end
  final_array
end

def find_a(array)
  array.select {|x| x.start_with?("a")}
end

def sum_array(array)
  array.inject {|sum, a| sum + a}
end

def add_s(array)
  array.each_with_index.collect do |value, index| 
    if index == 1
      value
    else
      value << "s"
    end
  end
end


