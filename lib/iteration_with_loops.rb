require 'pry'
def join_nested_strings(aoa)
  simplify_it = aoa.flatten
  index_counter = 0
  while index_counter < simplify_it.length
    if simplify_it[index_counter].instance_of? Integer
      simplify_it.delete_at(index_counter)
    end
    index_counter += 1
  end
  simplify_it.join(' ')
end
binding.pry
