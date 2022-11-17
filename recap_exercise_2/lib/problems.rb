# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)
    factors = []
    max = num_1 * num_2
    (1..max).each do |n|
        return n if n % num_1 == 0 && n % num_2 == 0
    end 
end


# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    winner = ''
    counter = 0
    counter2 = 0
    (0...str.length-1).each do |idx|
        (idx+1...str.length-1).each do |idx2|
            if str[idx..idx+1] == str[idx2..idx2+1]
                counter2 += 1 
            end 
        if counter2 > counter 
            winner = str[idx..idx+1]
            counter = counter2 
            counter2 = 0
        else 
            counter = counter2 
            counter2 = 0
        end 
        end 
    end 
winner
end


class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        swapped = Hash.new(0)
        self.each do |k, v|
            swapped[v] = k 
        end 
    swapped 
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
    counter = 0
        (0...self.length-1).each do |idx|
            (idx+1...self.length).each do |idx2|
                counter += 1 if self[idx] + self[idx2] == num
            end
        end 
    counter 
    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    #
    # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
    # two parameters, which represents the two elements in the array being compared.
    # If the block returns 1, it means that the second element passed to the block
    # should go before the first (i.e. switch the elements). If the block returns -1,
    # it means the first element passed to the block should go before the second
    # (i.e. do not switch them). If the block returns 0 it implies that
    # it does not matter which element goes first (i.e. do nothing).
    #
    # This should remind you of the spaceship operator! Convenient :)
    def bubble_sort(&prc)
        if prc.nil?
            return self.sort! { |a, b| a <=> b}
        else  
            return self.sort! do |a, b| { |a, b| prc.call(a) <=> prc.call(b)}
        end 
    end
end
