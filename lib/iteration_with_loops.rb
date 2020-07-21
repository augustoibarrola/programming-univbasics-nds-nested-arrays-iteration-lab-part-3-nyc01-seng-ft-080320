
def join_nested_strings(mixed_data)
  final_array_of_strings_to_be = Array.new
  row_counter = 0
  while row_counter < mixed_data.count do
    index_counter = 0
    while index_counter < mixed_data[row_counter].count
      if mixed_data[row_counter][index_counter].is_a? String.class
        delete_array = mixed_data[row_counter][index_counter]
        delete_array.delete_at(index_counter)
        index_counter += 1
      else
        index_counter += 1
      end
    end
    row_counter +=1
  end
  final_array_of_strings_to_be.flatten.join(" ")
end
