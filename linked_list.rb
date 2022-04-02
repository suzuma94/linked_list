class Node 
    attr_accessor :value, :next_node
    def initialize(value = nil, next_node = nil)
        @value = value
        @next_node = next_node
    end
end

class LinkedList
    attr_accessor :head, :tail
    def initialize(head = nil, tail = nil)
        @head = head
        @tail = tail
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
        @head = node
    end

    def size
        node = @head
        counter = 0
        until node == nil
            node = node.next_node
            counter += 1
        end
        return counter
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
            print 'There are no nodes'
        end
        node = @head
        until node.next_node == @tail  
            node = node.next_node
        end
        @tail = node
        node.next_node = nil
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
        node = @head
        counter = 0
        until node == nil
            if node.value == value
                return counter
            else
                node = node.next_node
                counter += 1
            end
        end
    end
          
    def to_s
        string = ""
        if (@head == nil)
            string = 'There are no nodes'
        else
            node = @head
            until node == nil
                string += "(#{node.value}) -> "
                node = node.next_node
            end
        string += 'nil'
        end
        string
    end

    def insert_at(value, index)
        if index == 0 && @head == nil
            node_new = Node.new(value)
            @head = node_new
            @tail = node_new
        elsif index == 0 && @head != nil
            node_new = Node.new(value, @head)
            @head = node_new
        elsif index < size && index > 1
            node = @head
            (index-1).times do
                node = node.next_node
            end
            node_new = Node.new(value, node.next_node)
            node.next_node = node_new
        elsif index < size && index == 1
            node_new = Node.new(value, @head.next_node)
            @head.next_node = node_new
        elsif index == size
            node_new = Node.new(value, nil)
            @tail.next_node = node_new
            @tail = node_new
        elsif index > size
            print "There are currently #{size} nodes, so pick a number between (0 and #{size})"
        end
    end

    def remove_at(index)
        node = @head
    if index > size
        print "There are no that many nodes, please enter a node index between (0 - #{size-1})"
    elsif @head == nil
        print "There are no nodes"
    elsif index == 0 && @head != nil
            @head = @head.next_node
    elsif index < size && index > 1 && index != (size - 1) #lastnode
            (index-1).times do
                node = node.next_node
            end
            node_next = node.next_node
            node.next_node = node_next.next_node
            node_next == nil
        elsif  index < size && index == 1
            node_next = @head.next_node 
            @head.next_node = node_next.next_node
            node_next == nil
        elsif index == (size - 1)
            (index-1).times do
                node = node.next_node
            end
            node_next = node.next_node
            node.next_node = nil
            node_next = nil
            @tail = node
        end
    end
        
end

a = LinkedList.new

a.append(30)
a.append(40)
a.append(50)
a.prepend(39)

a.insert_at(333, 0)



p a

