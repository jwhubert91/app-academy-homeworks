# W4D5 homework - octopus problems

# concerning Big O analysis...

# octopus wants to eat longest fish in array of fish...
fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

# Part 1 - Eating Octopus
# 1. Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths
# to all other fish lengths

def sluggish_octopus(arr)
    global_largest = ""
    arr.each_with_index do |ele1,idx1|
        current_largest = ""
        arr.each_with_index do |ele2,idx2|
            if idx2 != idx1
                if ele2.length > ele1.length
                    current_largest = ele2
                else
                    current_largest = ele1
                end
            end
        end
        global_largest = current_largest if current_largest.length > global_largest.length
    end
    global_largest
end


# 2. Dominant Octopus


# 3. Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest
# fish that you have found so far while stepping through the array only once.
def clever_octopus(arr)
    largest = ""
    arr.each do |fish|
        largest = fish if fish.length > largest.length
    end
    largest
end


# Part 2 - Dancing Octopus
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles 
# in the following directions:
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

# slow_dance

def slow_dance(target,tiles)
    tiles.each_with_index do |tile,idx|
        return idx if tiles == target
    end
    nil
end

tiles_hash = {}
tiles_array.each_with_index {|tile,idx| tiles_hash[tile] = idx}

# fast_dance
def fast_dance(target,hash)
    return hash[target]
    nil
end


