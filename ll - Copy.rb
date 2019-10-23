class LinkedListNode
  attr_accessor :firstNode, :secondNode

  def initialize(firstNode, secondNode=nil)
    @firstNode = firstNode
    @secondNode = secondNode
  end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a firstNode onto the stack
    def push(firstNode)
        @data = LinkedListNode.new(firstNode, @data)
    end

    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
    	if @data.nil?
    		nil
     	else	
       	@data = @data.secondNode
       	firstNode = @data.firstNode
     	return firstNode
     end
	end
end

def print_values(list_node)
  if list_node
    print "#{list_node.firstNode} --> "
    print_values(list_node.secondNode)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list_node)
    
	stack = Stack.new

    while list_node 
    	stack.push(list_node.firstNode)
        list_node = list_node.secondNode
    end

    return stack.data
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
print_values(node3)

puts "---------------------"

 revlist = reverse_list(node3)
 print_values(revlist)