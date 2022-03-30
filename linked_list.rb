class Node
    attr_accessor :value, :next_node
    def initialize(value = nil, next_node = nil)
        @value
        @next_node
    end
end

class LinkedList
    attr_accessor :head, :tail
    def initialize(head = nil, tail = nil)
        @head 
        @tail
    end

    def append(value)
        node = Node.new(value)
        if (@head == nil)
            @head = node
            @tail = node
        else
            @tail.next_node = node
            @tail = node
        end  
    end

    def prepend(value)
        node = Node.new(value, @head)
        if (@head == nil)
            @head = node
            @tail = node
        else
            @head = node
        end
    end

    def size
        counter = 0
        node = @head
        until node == nil 
            node = node.next_node
            counter += 1
        end
    end

    def head
        if (@head == nil)
            print "No head"
        else
            print @head
        end
    end
    
    def tail
        if (@head == nil)
            print "No head and tail"
        else
            print @tail
        end
    end
    
    def at(index)
        node = @head
        index.times do
            node = node.next_node
        end
    return node
    end

    def pop
        if size < 1
            puts "no nodes"
        else
            node = @head
            until node.next_node == @tail 
                node = node.next_node
            end
            node.next_node == nil
            @tail = node
        end
    end

    def contains?(value)
        node = @head
        until node == nil
            if node.value == value
                return true
            else
                node = node.next_node
            end
        end
        return false
    end

    def find(value)
        index = 1 
        node = @head
        until node == nil
            if (node.value == value)
                return index
            else
                node = node.next_node
                index += 1
            end
        end
        return 'nil'
    end

    def to_s
        if (@head == nil)
            print 'There are no nodes'
        else
            node = @head
            until node == nil
                p '(#{node.value}) -> '
                node = node.next_node
            end
        end
    end
end