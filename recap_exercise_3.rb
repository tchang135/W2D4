require "byebug"

def no_dupes?(arr)
    new_arr = [] 
    arr.each_with_index do |ele, idx|
        counter = 0
        arr.each_with_index do |ele2, idx2|
           counter += 1 if idx2 != idx && ele2 == ele
        end 
        new_arr << ele if counter == 0 
        counter = 0
    end 
new_arr
end 

# p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
# p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
# p no_dupes?([true, true, true])            # => []


def no_consecutive_repeats?(arr)
    (0...arr.length-1).all? { |idx| arr[idx] != arr[idx+1] }
end     


# p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
# p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
# p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
# p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
# p no_consecutive_repeats?(['x'])                              # => true


def char_indices(str)
    repeats = Hash.new(Array.new)
    str.each_char do |letter|
        str.each_char.with_index do |char, idx|
            repeats[char].push(idx)
        end 
    end 
repeats
end 


p char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
p char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}