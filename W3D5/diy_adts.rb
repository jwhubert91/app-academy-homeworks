# W3D5 homework - diy algorithmic data types

class Stack
    def initialize
        @stack = Array.new
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end
end

# p new_stack = Stack.new
# p new_stack.push("1st el")
# p new_stack.push("2nd el")
# p new_stack.push("3rd el")
# p new_stack.pop
# p new_stack.peek

class Queue
    def initialize
        @queue = Array.new
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
        @queue.last
    end
end

# p new_queue = Queue.new
# p new_queue.enqueue("1st el")
# p new_queue.enqueue("2nd el")
# p new_queue.enqueue("3rd el")
# p new_queue.dequeue
# p new_queue.peek

